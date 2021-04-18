DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  _from VARCHAR(255) COMMENT 'Откуда',
  _to VARCHAR(255) COMMENT 'Куда'
) COMMENT = 'Рейсы';

INSERT INTO flights VALUES
  (NULL, 'moscow','omsk'),
  (NULL, 'novgorod','kazan'),
  (NULL, 'irkutsk','moscow'),
  (NULL, 'omsk','irkutsk'),
  (NULL, 'moscow','kazan');
  
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) COMMENT 'Англ',
  _name VARCHAR(255) COMMENT 'Рус'
) COMMENT = 'Города';

INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');
  
  SELECT 
flights.id,
t1._name AS 'from',
t2._name AS 'to'
FROM flights
LEFT JOIN cities t1 ON t1.label = flights._from
LEFT JOIN cities t2 ON t2.label = flights._to;

