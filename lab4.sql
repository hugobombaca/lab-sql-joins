SELECT c.name AS category_name , COUNT(film_id) As films_per_category
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;

SELECT s.store_id, c.city, ct.country
FROM store s
JOIN address a ON a.address_id = s.address_id
JOIN city c ON a.city_id = c.city_id
JOIN country ct ON ct.country_id = c.country_id;

SELECT s.store_id , SUM(p.amount) as revenue
FROM store s
JOIN staff st ON s.manager_staff_id = st.staff_id
JOIN payment p ON p.staff_id = st.staff_id
GROUP BY s.store_id;

SELECT ROUND(AVG(f.length),2) favg , c.name
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON c.category_id = fc.category_id
GROUP BY c.name
ORDER BY favg DESC;

SELECT 
	CASE
		WHEN COUNT(*)>0 THEN "Yes can be rented :happy_face:"
        ELSE "NO :angry_face:"
	END AS can_rent
FROM rental r
JOIN inventory i ON i.inventory_id = r.inventory_id
JOIN store s ON s.store_id = i.store_id
JOIN film f ON f.film_id = i.film_id
WHERE f.title = "Academy Dinosaur" AND s.store_id = 1;





#starting to get the hang of this 