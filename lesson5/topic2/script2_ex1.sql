SELECT AVG(YEAR(NOW()) - YEAR(birthday)) FROM lesson5.users;
SELECT *, AVG (timestampdiff(YEAR, birthday, NOW())) FROM lesson5.users;