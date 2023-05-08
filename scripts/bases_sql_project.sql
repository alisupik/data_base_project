INSERT INTO section VALUES ('Волейбол', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('ОФП девочки', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Качалка', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Йога', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Лыжи', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Батут', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Картинг', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Яхтинг', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Бокс', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Спортивная гимнастика', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Коньки', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Спорт ориентир', 'Коробка', 'каждый день, с 9.00');
INSERT INTO cd.sections VALUES ('Айкидо', 'Коробка', 'каждый день, с 9.00');

INSERT INTO cd.sections (name, place, time) VALUES
('Футбол', 'Коробка', '16:30-18:00'),
('Аэробика', 'Бассейн', '19:00-20:00'),
('Бокс', 'Тренажерный зал', '14:00-15:30'),
('Плавание', 'Бассейн', '10:00-11:00'),
('Баскетбол', 'Бассейн', '18:00-20:00'),
('Йога', 'КСД 8ки', '10:30-12:00'),
('Тхэнквондо', 'Коробка', '17:00-19:00'),
('Легкая атлетика', 'Стадион', '9:00-11:00'),
('Гимнастика', 'Стадион', '15:00-16:30'),
('Кроссфит', 'Бассейн', '20:00-21:00') ;



INSERT INTO cd.events (match, time, result) VALUES
('Соревнования по плаванию', '12 июня, 10:00', '1 место'),
('Чемпионат по боксу', '15 июля, 15:00', '2 место'),
('Турнир по баскетболу', '20 августа, 18:00', '3 место'),
('Чемпионат по легкой атлетике', '10 сентября, 9:00', '1 место'),
('Турнир по футболу', '25 октября, 16:00', '4 место'),
('Кубок по хоккею', '1 ноября, 20:00', '2 место'),
('Соревнования по теннису', '5 декабря, 12:00', '1 место'),
('Чемпионат по волейболу', '15 января, 17:00', '3 место'),
('Турнир по настольному теннису', '20 февраля, 10:00', '4 место'),
('Кубок по бадминтону', '1 марта, 14:00', '2 место');
INSERT INTO events VALUES ('Матч века, РТ ФИВТ', '14 мая', NUN);
INSERT INTO events VALUES ('МАТЧ ВЕКА БМ фупм', '11 мая', NUN);
INSERT INTO events VALUES ('Рогейн', '1 мая', NUN);
INSERT INTO events VALUES ('Планка века', '28 апреля');
INSERT INTO events VALUES ('Баскетбольный матч', '14 мая');
INSERT INTO events VALUES ('Матч маи мфти', '14 мая');
INSERT INTO events VALUES ('День рождение резонанса', '14 апреля', NUN);
INSERT INTO events VALUES ('Соревнование по чиру', '14 мая');
INSERT INTO events VALUES ('Волейбольный матч', '7 мая');
INSERT INTO events VALUES ('Бассейн мастеркласс по плаванию', '14 мая');
INSERT INTO events VALUES ('Соревнования по плаванию', '14 мая');
INSERT INTO events VALUES ('Бассейн мастеркласс по плаванию', '14 мая');


INSERT INTO cd.dance (name, place, time) VALUES
('К поп', 'КДС 8ки', '19:00-20:30'),
('Вог', 'КЗ', '20:30-22:00'),
('Хип-хоп', 'Спортивный зал', '15:00-16:30'),
('Клубные танцы', 'Ночной клуб', '22:00-23:30'),
('Контемп', 'КДС 11ки', '18:00-19:30'),
('Исторические', 'Уличная танцевальная студия', '17:00-18:30'),
('Бальные', 'ГК', '19:30-21:00'),
('Зумба', 'ГК', '16:00-17:30'),
('Самба', 'Спортивный комплекс', '20:00-21:30'),
('Резонанс', 'Бассейн', '18:30-20:00');

INSERT INTO cd.students (name, group, valid_from, valid_to) VALUES
('Иванов Петр', 'Секция бокса', '01.09.2022', '30.06.2023'),
('Сидорова Алина', 'Секция йоги', '01.10.2022', '31.05.2023'),
('Кузнецов Дмитрий', 'Группа фитнеса', '01.07.2022', '31.12.2022'),
('Петрова Ольга', 'Секция гимнастики', '01.08.2022', '28.02.2023'),
('Васильев Иван', 'Группа аэробики', '01.11.2022', '30.06.2023'),
('Медведева Екатерина', 'Секция тхэквондо', '01.09.2022', '31.05.2023'),
('Козлов Сергей', 'Секция легкой атлетики', '01.10.2022', '31.01.2023'),
('Жукова Анна', 'Группа кроссфита', '01.11.2022', '30.06.2022'),
('Соколов Михаил', 'Секция плавания', '01.09.2022', '31.12.2022'),
('Новикова Татьяна', 'Секция баскетбола', '01.10.2022', '28.02.2023');

INSERT INTO cd.student1 (name, health_group) VALUES
('Иванов Петр', 'Основная'),
('Сидорова Алина', 'Подготовительная'),
('Кузнецов Дмитрий', 'Основная'),
('Голубева Ольга', 'Подготовительная'),
('Узбеков Шамиль', 'Основная'),
('Попеленский Михаил', 'Подготовительная'),
('Строганова Татьяна', 'Подготовительная'),
('Смородина Жанна', 'Основная'),
('Кошкин Кирилл', 'Основная'),
('Поздняков Владимир', 'Основная');

INSERT INTO cd.shedule (sport_name, time, group, type) VALUES
('Аэробика', 'Пн, Ср, Пт 10:00-11:00', 'Б05-123', 'Регулярные занятия'),
('Плавание', 'Пн, Ср, Пт 16:30-18:30', 'Б04-223', 'Регулярные занятия'),
('Фитнес', 'Вт, Чт 12:00-13:00', '111', 'Регулярные занятия'),
('Бокс', 'Вт, Чт 19:00-20:30', '126', 'Регулярные занятия'),
('Баскетбол', 'Сб 14:00-16:00', '125', 'Регулярные занятия'),
('Йога', 'Пн, Ср 18:00-19:30', 'Секция йоги', 'Регулярные занятия'),
('Тхэквондо', 'Вт, Чт 17:00-19:00', 'Секция тхэквондо', 'Регулярные занятия'),
('Легкая атлетика', 'Пн, Ср, Пт 9:00-11:00', 'Секция легкой атлетики', 'Регулярные занятия'),
('Гимнастика', 'Вт, Чт 15:00-16:30', 'Секция гимнастики', 'Регулярные занятия'),
('Кроссфит', 'Пн, Ср, Пт 20:00-21:00', 'Группа кроссфита', 'Регулярные занятия');

INSERT INTO cd.teacher (name, sport) VALUES
('Иванова Елена', 'Аэробика'),
('Водолеев Марк', 'Аэробика'),
('Водолеев Марк', 'Футбол'),
('Шен Эрик', 'Аэробика'),
('Петров Сергей', 'Плавание'),
('Кузнецова Ольга', 'Фитнес'),
('Сидоров Иван', 'Бокс'),
('Медведева Анна', 'Баскетбол');
