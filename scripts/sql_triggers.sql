--1. Триггер для таблицы cd.students, который будет автоматически обновлять поле valid_to при добавлении новой записи или изменении даты valid_from на более позднюю.

CREATE FUNCTION update_valid_to() RETURNS TRIGGER AS $$
BEGIN
    IF NEW.valid_to IS NULL OR NEW.valid_from > OLD.valid_to THEN
        NEW.valid_to = CURRENT_DATE + INTERVAL '1 year'; -- обновляем дату окончания действия
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_valid_to_trigger
    BEFORE INSERT OR UPDATE OF valid_from ON cd.students
    FOR EACH ROW
    EXECUTE FUNCTION update_valid_to();

--2. Триггер для таблицы cd.shedule, который будет проверять, что при добавлении новой записи или изменении существующей, время проведения не пересекается с другими занятиями для этой же группы.

CREATE FUNCTION check_schedule_conflict() RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM cd.shedule
        WHERE group = NEW.group
        AND time && tsrange(NEW.time, NEW.time + INTERVAL '1 hour')
        AND sport_name <> NEW.sport_name
    ) THEN
        RAISE EXCEPTION 'Conflicting schedule exists for this group';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_schedule_conflict_trigger
    BEFORE INSERT OR UPDATE OF time ON cd.shedule
    FOR EACH ROW
    EXECUTE FUNCTION check_schedule_conflict();
