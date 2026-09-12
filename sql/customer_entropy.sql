WITH target_customers AS(SELECT customer_id,segment FROM customer_segments
WHERE segment = 1 OR segment =2),
product_group_count AS(SELECT tc.customer_id,segment, product_group_name, COUNT(a.article_id)AS item_count
FROM target_customers tc
LEFT JOIN transactions_train tt
ON tc.customer_id = tt.customer_id
LEFT JOIN articles a
ON a.article_id = tt.article_id
WHERE t_date <= 
(SELECT MAX(t_date)-INTERVAL'120days' FROM transactions_train)AND 
t_date>=(SELECT MAX(t_date)-INTERVAL'120days'-INTERVAL'364days' FROM transactions_train)
GROUP BY tc.customer_id, segment, product_group_name),
product_group_share AS (
SELECT *,1.0*item_count/SUM(item_count) OVER (PARTITION BY customer_id)AS group_share
FROM product_group_count)
SELECT customer_id,segment,
-SUM(group_share*LN(group_share)) AS entropy
FROM product_group_share
GROUP BY customer_id, segment