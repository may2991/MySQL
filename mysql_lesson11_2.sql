1.
> INCR 192.168.100.1
(integer) 1
> INCR 192.168.100.1
(integer) 2
> INCR 192.168.100.1
(integer) 3
> INCR 192.168.100.2
(integer) 1

2.
> SET my@email.com Iam
OK
> SET Iam my@email.com
OK
> GET Iam
"my@email.com"
> GET my@email.com
"Iam"

3.
db.shop.insert({name: 'Intel Core i3-8100'},{catalogs_name: 'Процессоры'},{description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.'},{price: '7890.00'},{created_at: Date.now()})