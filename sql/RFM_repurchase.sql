WITH repurchase AS (SELECT customer_id,MIN(t_date)AS repurchase FROM transactions_train
WHERE t_date>(SELECT MAX(t_date)-INTERVAL'120days' FROM transactions_train)
GROUP BY customer_id)
SELECT rfm.customer_id,recency,frequency,log_frequency,monetary,log_monetary,
(CASE WHEN repurchase IS NOT NULL THEN 1 ELSE 0 END) AS repurchase FROM rfm
LEFT JOIN repurchase
ON rfm.customer_id=repurchase.customer_id
