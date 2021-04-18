SELECT 
    shop.users.id AS user_id, 
    COUNT(*) AS num_orders
FROM
    shop.users
        JOIN
    shop.orders ON shop.users.id = shop.orders.user_id
    GROUP BY user_id;