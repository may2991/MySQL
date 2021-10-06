SELECT 
user_id,
((SELECT COUNT(*) FROM vk.post WHERE user_id=vk.profile.user_id) * 4 
+
(SELECT COUNT(*) FROM vk.media WHERE user_id=vk.profile.user_id) * 3
+ 
(SELECT COUNT(*) FROM vk.message WHERE from_user_id=vk.profile.user_id) * 2
+
(SELECT COUNT(*) FROM vk.like WHERE user_id=vk.profile.user_id)) as k_akt
FROM vk.profile
ORDER BY k_akt LIMIT 10;