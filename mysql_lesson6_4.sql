SELECT 
	gender,
	SUM((SELECT COUNT(*) FROM vk.like WHERE user_id=vk.profile.user_id)) as likes
FROM vk.profile
GROUP BY gender;