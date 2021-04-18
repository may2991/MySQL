SELECT 
user_id,
(SELECT COUNT(*) FROM vk.message WHERE to_user_id=vk.profile.user_id AND from_user_id=86) +
(SELECT COUNT(*) FROM vk.message WHERE from_user_id=vk.profile.user_id AND to_user_id=86) as Num_message_with_id86
FROM vk.profile
ORDER BY Num_message_with_id86 DESC;