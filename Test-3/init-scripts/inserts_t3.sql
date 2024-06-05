DROP TABLE IF EXISTS people;

CREATE TABLE people(
  id integer PRIMARY KEY,
  lastname varchar(64),
  firstname varchar(64),
  secondname varchar(64),
  age integer,
  oid integer
);

INSERT
INTO people VALUES
(1, 'Ivanov', 'Ivan', 'Ivanovich', 30, 1),
(2, 'Petrov', 'Petr', 'Petrovich', 40, 2),
(3, 'Sidorov', 'Sidor', 'Sidorovich', 30, 3),
(4, 'Vasilev', 'Petr', 'Vasilevich', 60, 4),
(5, 'Mihailov', 'Mihail', 'Ivanovich', 30, 5);
SELECT * FROM people;
