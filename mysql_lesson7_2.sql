SELECT 
    shop.products.name AS product_name,
    shop.catalogs.name AS category
FROM
    shop.products
        LEFT JOIN
    shop.catalogs ON shop.products.catalog_id = shop.catalogs.id;