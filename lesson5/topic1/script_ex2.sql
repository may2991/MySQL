UPDATE lesson5.users 
SET created_at = STR_TO_DATE (created_at,'%d.%m.%Y %H:%i'), 
update_at = STR_TO_DATE (update_at,'%d.%m.%Y %H:%i') 
WHERE id > 0;
ALTER TABLE lesson5.users MODIFY created_at DATETIME;
ALTER TABLE lesson5.users MODIFY update_at DATETIME;
SELECT * FROM lesson5.users;