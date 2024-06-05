-- SELECT * from people;

-- 1
-- SELECT id, secondname, age FROM people WHERE id in (1, 2) AND age in (30, 40) GROUP BY id, secondname, age ORDER BY id ASC, age ASC LIMIT 1;

-- 2
-- SELECT age, secondname FROM people WHERE age in (30, 40) ORDER BY oid LIMIT 1;

-- 3
-- SELECT lastname FROM people WHERE lastname = 'Ivanov' ORDER BY lastname ASC LIMIT 1;

-- 4
-- SELECT upper(lastname), firstname, secondname, age FROM people ORDER BY firstname, lastname ASC LIMIT 1;

-- 5
-- SELECT substring(secondname, 4, 6), age, lastname, id FROM people ORDER BY age, upper(secondname) DESC LIMIT 1;

-- 6
-- SELECT DISTINCT ON(age, secondname, id) secondname, id, age FROM people WHERE id in (1, 2) ORDER BY id DESC, age DESC, secondname DESC LIMIT 1;

-- 7
-- SELECT id, age, secondname, firstname, lastname FROM people WHERE secondname = 'Ivanovich' OR age in (30, 40) OR firstname like 'Ivan' OR lastname like 'Ivanov' ORDER BY id DESC, age DESC, lastname LIMIT 1;

-- 8
-- SELECT secondname, lastname, age, lower(firstname) FROM people ORDER BY oid LIMIT 1;

-- 9
-- SELECT id, lastname, secondname FROM people ORDER BY oid LIMIT 1;

-- 10
-- SELECT firstname, age FROM people ORDER BY age ASC LIMIT 1;

-- 11
-- SELECT firstname, secondname, age, substring(lastname, 3, 3), id FROM people ORDER BY id ASC LIMIT 1;

-- 12
-- SELECT DISTINCT ON(age, secondname, lastname, id) age, secondname, lastname, id FROM people ORDER BY lastname LIMIT 1;

-- 13
-- SELECT trim(firstname), lastname, lower(secondname) FROM people ORDER BY oid LIMIT 1;

-- 14
-- SELECT lastname, trim(firstname), secondname, id FROM people ORDER BY oid LIMIT 1;

-- 15
-- SELECT lastname FROM people WHERE lastname = 'Ivanov' ORDER BY oid LIMIT 1;

-- 16
-- SELECT lower(secondname), id, age, firstname FROM people ORDER BY oid LIMIT 1;

-- 17
-- SELECT firstname, id, secondname, lastname FROM people WHERE secondname in ('Ivanovich', 'Petrovich') OR id in (1, 2) OR firstname like 'Ivan' OR lastname like 'Ivanov' ORDER BY oid LIMIT 1;

-- 18
-- SELECT id, age, firstname FROM people GROUP BY id, age, firstname ORDER BY age, id DESC LIMIT 1;

-- 19
-- SELECT upper(firstname), lastname FROM people GROUP BY firstname, lastname ORDER BY lower(lastname) DESC LIMIT 1;

-- 20
-- SELECT secondname, firstname, age FROM people ORDER BY oid LIMIT 1;

SELECT firstname, id, lastname FROM people WHERE lastname in ('Ivanov', 'Petrov') AND id in (1, 2) ORDER BY oid LIMIT 1