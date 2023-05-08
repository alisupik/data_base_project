--Представления:

--1. Представление списка студентов без персональных данных и технических полей:

CREATE OR REPLACE VIEW cd.students_list AS
SELECT ROW_NUMBER() OVER () as id,
    name,
    group,
    TO_CHAR(valid_from, 'DD-Mon-YYYY') AS valid_from_date,
    TO_CHAR(valid_to, 'DD-Mon-YYYY') AS valid_to_date
FROM cd.students;

--2. Представление списка расписания спортивных занятий для конкретной группы:

CREATE OR REPLACE VIEW cd.shedule_for_group AS
SELECT s.sport_name,
    TO_CHAR(s.time, 'DD-Mon-YYYY HH:MM:SS') AS start_time,
    t.name AS teacher_name
FROM cd.shedule s
INNER JOIN cd.teacher t ON s.sport_name = t.sport
WHERE s.group = 'A1';

--3. Представление статистики участия студентов в танцевальных мероприятиях:

CREATE OR REPLACE VIEW cd.dance_participation AS
SELECT d.place,
    COUNT(ds.name) AS number_of_participants
FROM cd.dance d
LEFT JOIN cd.student1 ds ON d.name = ds.heaith_group
GROUP BY d.place;

--4. Представление списка преподавателей и спортивных дисциплин, которые они преподают:

CREATE OR REPLACE VIEW cd.teachers_sports AS
SELECT t.name AS teacher_name,
    string_agg(s.sport_name, ', ') AS sports
FROM cd.teacher t
INNER JOIN cd.shedule s ON t.sport = s.sport_name
GROUP BY t.name;

--5. Представление списка секций, которые принимают новых студентов:

CREATE OR REPLACE VIEW cd.available_sections AS
SELECT sections.name,
    sections.place,
    sections.time
FROM cd.sections
LEFT JOIN cd.students s ON sections.name = s.group
WHERE s.group IS NULL;

--6. Представление списка событий, происходящих в определенный день:

CREATE OR REPLACE VIEW cd.events_on_date AS
SELECT match,
    result
FROM cd.events
WHERE time = '2022-01-01';

--Тесты:

--1. Тесты для представления cd.students_list:

SELECT * FROM cd.students_list;

-- 2. Тесты для представления cd.shedule_for_group:

SELECT * FROM cd.shedule_for_group;

-- 3. Тесты для представления cd.dance_participation:

SELECT * FROM cd.dance_participation;

-- 4. Тесты для представления cd.teachers_sports:

SELECT * FROM cd.teachers_sports;

-- 5. Тесты для представления cd.available_sections:

SELECT * FROM cd.available_sections;

-- 6. Тесты для представления cd.events_on_date:

SELECT * FROM cd.events_on_date;
