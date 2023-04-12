CREATE SEQUENCE seq_person_discounts START 1;

ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT (nextval('seq_person_discounts'));

-- INSERT INTO person_discounts (person_id, pizzeria_id, discount) VALUES (12, 6, 10);

-- ALTER SEQUENCE seq_person_discounts RESTART WITH (SELECT (COUNT (id)) + 1 FROM person_discounts);