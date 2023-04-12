SELECT p.name, m.pizza_name, m.price,
        ROUND(m.price - (m.price * pd.discount / 100)) AS discount_price,
        piz.name AS pizzeria_name
FROM person_order po
JOIN menu m ON po.menu_id = m.id
JOIN person_discounts pd ON po.person_id = pd.person_id AND m.pizzeria_id = pd.pizzeria_id
JOIN person p ON pd.person_id = p.id
JOIN pizzeria piz ON pd.pizzeria_id = piz.id
ORDER BY 1, 2;