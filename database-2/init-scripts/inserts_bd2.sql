DROP TABLE IF EXISTS bd_employees;
DROP TABLE IF EXISTS bd_departments;

CREATE TABLE bd_departments(
  id integer PRIMARY KEY,
  name varchar(64),
  postal_code varchar(6),
  street varchar(64),
  building varchar(16),
  city varchar(32)
);
CREATE TABLE bd_employees(
  last_name varchar(64),
  first_name varchar(64),
  phone_number varchar(18),
  email varchar(32),
  department_id integer REFERENCES bd_departments(id),
  PRIMARY KEY(last_name, first_name, department_id)
);

INSERT
INTO bd_departments VALUES
(10, 'Administration', '109658', 'Leningradskoe shosse', '1', 'Moscow'),
(20, 'Marketing', '107701', 'Lenina', '22a', 'Volgograd'),
(30, 'Purchasing', '109901', 'Mikluho-Maklaya', '8', 'Bryansk'),
(40, 'Human Resources', '10967', '5-ya parkovaya', '16', 'Moscow'),
(50, 'Shipping', '109659', '38 Bakinskih komissarov', '77', 'Moscow'),
(60, 'IT', '109902', 'Pervomajskaya', '33', 'Kirov');
SELECT * FROM bd_departments;

INSERT
INTO bd_employees VALUES
('Radygin', 'Victor', '+7-(916)-111-45-34', 'vr@e.mail.mephi.ru', 10),
('Kuprijanov', 'Dmitrij', '8-(495)-567-6-7788', 'kd@e.mail.mephi.ru', 20),
('Ivanov-Skladovskij', 'Ivan', '89167748923', 'ii1@mail.mephi.ru', 30),
('Petrov', 'Petr', '+79167778998', 'petrovpetr@m.gmail.ru', 40),
('kozlov', 'Konstantin', '8-(495)-567-67-78', 'kkozlov@mephi.ru', 50),
('Abramov', 'Abram', '+7-(96)-111-45-35', 'abramova@k75.mephi.ru', 60),
('Ivanov�-Skladovsk�ya-Petrova', 'Ivanka', '89167748924', 'ii2@mail.mephi.ru', 60);
SELECT * FROM bd_employees;
