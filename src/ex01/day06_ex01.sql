WITH d AS
(SELECT person_id, pizzeria_id, 
CASE 
    WHEN COUNT(*) = 1 THEN 10.5
    WHEN COUNT(*) = 2 THEN 22
    ELSE 30
    END AS discount 
FROM person_order
INNER JOIN menu ON menu_id = menu.id
GROUP BY person_id, pizzeria_id
ORDER BY person_id, pizzeria_id)

INSERT INTO person_discounts  (
    SELECT row_number() over() as id,
    person_id, pizzeria_id, discount
    FROM d 
);
