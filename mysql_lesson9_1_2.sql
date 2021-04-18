USE `shop`;
CREATE  OR REPLACE VIEW `names` AS
SELECT 
    t1.name AS name_products, 
    t2.name AS name_catalogs
FROM shop.products t1
LEFT JOIN shop.catalogs t2 ON t1.catalog_id = t2.id;;
