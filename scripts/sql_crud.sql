--  INSERT запросы:
INSERT INTO cd.sections (name, place, time) VALUES ('Фитнес', 'Тренажерный зал', '6:00-7:00');
INSERT INTO cd.sections (name, place, time) VALUES ('Растяжка', 'Студия 2', '16:00-17:00');
INSERT INTO cd.events (match, time, result) VALUES ('Марафон', '9:00', '1 место');
INSERT INTO cd.events (match, time, result) VALUES ('Бег на 100 м', '14:00', '3 место');
INSERT INTO cd.dance (name, place, time) VALUES ('Латина', 'Студия 1', '18:00-19:00');
INSERT INTO cd.dance (name, place, time) VALUES ('Хип-хоп', 'Студия 3', '20:00-21:00');
INSERT INTO cd.students (name, group, valid_from, valid_to) VALUES ('Иванов Иван', 'Группа 1', '01.09.2021', '01.06.2022');
INSERT INTO cd.students (name, group, valid_from, valid_to) VALUES ('Петров Петр', 'Группа 2', '01.09.2021', '01.06.2022');
INSERT INTO cd.teacher (name, sport) VALUES ('Сидоров Александр', 'Теннис');
INSERT INTO cd.teacher (name, sport) VALUES ('Иванова Елена', 'Фитнес');

--SELECT запросы:
SELECT * FROM cd.sections;
SELECT name, place FROM cd.dance;
SELECT match FROM cd.events WHERE result='1 место';
SELECT * FROM cd.students WHERE group='Группа 1';
SELECT * FROM cd.shedule WHERE time='10:00' AND type='Тренировка';
SELECT name, sport FROM cd.teacher;
SELECT COUNT(*) FROM cd.students;
SELECT MAX(result) FROM cd.events;
SELECT DISTINCT place FROM cd.sections;
SELECT name FROM cd.dance WHERE time LIKE '%19:00%';

--UPDATE запросы:
UPDATE cd.sections SET time='8:00-9:00' WHERE name='Фитнес';
UPDATE cd.events SET result='2 место' WHERE match='Бег на 100 м';
UPDATE cd.students SET group='Группа 3' WHERE name='Иванов Иван';
UPDATE cd.teacher SET sport='Йога' WHERE name='Иванова Елена';
UPDATE cd.sections SET time='16:00-17:00' WHERE place='Студия 1';
UPDATE cd.dance SET time='21:00-22:00' WHERE name='Латина';
UPDATE cd.shedule SET type='Занятие по здоровью' WHERE sport_name='Фитнес';
UPDATE cd.students SET valid_to='01.09.2023' WHERE name='Петров Петр';
UPDATE cd.teacher SET sport=NULL WHERE name='Сидоров Александр';
UPDATE cd.events SET time='10:00' WHERE match='Марафон';

--DELETE запросы:
DELETE FROM cd.sections WHERE place='Стадион';
DELETE FROM cd.events WHERE match='Плавание';
DELETE FROM cd.dance WHERE place='Студия 2';
DELETE FROM cd.students WHERE name='Сидоров Сидор';
DELETE FROM cd.shedule WHERE sport_name='Фитнес' AND time='6:00-7:00';
DELETE FROM cd.sections WHERE time='16:00-17:00';
DELETE FROM cd.dance WHERE name LIKE '%Хип-хоп%';
DELETE FROM cd.teacher WHERE name='Иванова Елена';
DELETE FROM cd.events WHERE result='Дисквалификация';
DELETE FROM cd.students WHERE valid_to<'01.01.2022';
