--1. Процедура поиска студентов с заданным именем:

CREATE OR REPLACE FUNCTION find_student(name_search VARCHAR)
RETURNS TABLE (name VARCHAR, group VARCHAR, valid_from VARCHAR, valid_to VARCHAR)
AS $$
BEGIN
    RETURN QUERY SELECT * FROM cd.students WHERE name = name_search;
END;
$$ LANGUAGE plpgsql;

--2. Функция для подсчета количества занятий определенной группы на заданную дату:

CREATE OR REPLACE FUNCTION count_classes(group_search VARCHAR, date_search VARCHAR)
RETURNS INTEGER
AS $$
DECLARE
    count INTEGER := 0;
BEGIN
    SELECT COUNT(*) INTO count FROM cd.shedule WHERE group = group_search AND time = date_search;
    RETURN count;
END;
$$ LANGUAGE plpgsql;

--1. Функция для получения списка студентов, которые занимаются в определенной секции в данный момент времени.

CREATE OR REPLACE FUNCTION cd.get_students_in_section(section_name VARCHAR, current_time VARCHAR)
RETURNS TABLE (
    student_name CHARACTER VARYING(200),
    section_name CHARACTER VARYING(200),
    start_time CHARACTER VARYING(200),
    end_time CHARACTER VARYING(200)
) AS
$$
BEGIN
    RETURN QUERY
        SELECT students.name,
               sections.name,
               schedule.time AS start_time,
               (schedule.time::TIME + INTERVAL '1 HOUR')::CHARACTER VARYING AS end_time
        FROM cd.students
        INNER JOIN cd.schedule ON students.group = schedule.group
        INNER JOIN cd.sections ON schedule.sport_name = sections.name
        WHERE sections.name = section_name
        AND schedule.time::TIME <= current_time::TIME AND (schedule.time::TIME + INTERVAL '1 HOUR')::TIME > current_time::TIME;
END;
$$ LANGUAGE plpgsql;

--Тесты для функции:
-- Проверяем, что функция возвращает ожидаемый список студентов
SELECT * FROM cd.get_students_in_section('football', '17:00');

-- Проверяем, что функция корректно обрабатывает отсутствие студентов в секции
SELECT * FROM cd.get_students_in_section('gym', '17:00');


--2. Процедура для добавления нового студента в базу данных.

CREATE OR REPLACE PROCEDURE cd.add_student(
  student_name VARCHAR,
  student_group VARCHAR,
  valid_from VARCHAR,
  valid_to VARCHAR DEFAULT NULL
)
AS $$
BEGIN
  INSERT INTO cd.students (name, group, valid_from, valid_to)
  VALUES (student_name, student_group, valid_from, valid_to);
END;
$$ LANGUAGE plpgsql;

--Тесты для процедуры:
-- Проверяем, что процедура успешно добавляет нового студента
CALL cd.add_student('Ivan Petrov', 'Group A', '2022-01-01');

-- Проверяем, что процедура корректно обрабатывает null для опционального параметра valid_to
CALL cd.add_student('Nikolai Ivanov', 'Group B', '2022-01-01', NULL);
