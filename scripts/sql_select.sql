--1. Получить список всех возможных групп занимающихся в секциях, отсортированных в алфавитном порядке:

SELECT group
FROM cd.students
GROUP BY group
HAVING COUNT(*) > 0
ORDER BY group ASC;

--2. Получить список всех студентов и их здоровья из группы, отсортированных по здоровью в порядке убывания:

SELECT name, heaith_group
FROM cd.student1
WHERE heaith_group IS NOT NULL
ORDER BY heaith_group DESC;

--3. Получить список всех занятий по физкультуре, отсортированных по времени начала:

SELECT *
FROM cd.shedule
ORDER BY time ASC;

--4. Получить список всех учителей и спорта, который они ведут, с указанием количества учеников, отсортированных по спорту в алфавитном порядке:

SELECT t.name, t.sport, COUNT(*) AS num_students
FROM cd.teacher t
JOIN cd.students s ON t.sport = s.group
GROUP BY t.name, t.sport
HAVING COUNT(*) > 0
ORDER BY t.sport ASC;

--5. Получить таблицу, в которой указаны все типы занятий по физкультуре, количество студентов, участвующих в каждом типе занятий и общее количество студентов, сгруппированные по типам занятий:

SELECT type, COUNT(*) AS num_students, SUM(COUNT(*)) OVER() AS total_students
FROM cd.shedule
GROUP BY type
ORDER BY type ASC;

--6. Получить таблицу, в которой указана информация о всех учителях и их наиболее популярных видов спорта, сгруппированные по учителям и отсортированные по их наиболее популярному виду спорта:

SELECT name, sport, COUNT(*) OVER(PARTITION BY sport) AS num_teachers
FROM cd.teacher
ORDER BY sport ASC;
