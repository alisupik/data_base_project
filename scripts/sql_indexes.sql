--1. cd.sections - индекс на поле name, так как по этому полю часто производится поиск нужных секций
CREATE INDEX ON cd_sections (upper(name));
--2. cd.events - индекс на поле time, так как по этому полю часто производится поиск нужных событий в определенное время;
CREATE INDEX ON cd.events (time);
--3. cd.dance - индекс на поле place, так как по этому полю часто производится поиск мест проведения танцевальных мероприятий;
CREATE INDEX ON cd.dance (place);
--4. cd.students - индекс на поле name, так как по этому полю часто производится поиск нужных студентов;
CREATE INDEX ON cd.students (name);
--5. cd.shedule - индекс на поле sport_name, так как по этому полю часто производится поиск расписания для конкретной спортивной дисциплины;
CREATE INDEX ON cd.shedule (sport_name);
--6. cd.teacher - индекс на поле name, так как по этому полю часто производится поиск нужных преподавателей.
CREATE INDEX ON cd.teacher (name);
