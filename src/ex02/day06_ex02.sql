SELECT person.name, pizza_name, price, 
ROUND(price * (1 - discount/100)) AS discount_price, pizzeria.name AS pizzeria_name
FROM person_discounts AS pd INNER JOIN menu ON menu.pizzeria_id = pd.pizzeria_id
INNER JOIN person ON person.id = pd.person_id
INNER JOIN pizzeria ON pizzeria.id = pd.pizzeria_id
ORDER BY person.name, pizza_name;