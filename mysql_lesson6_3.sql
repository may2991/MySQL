SELECT 
	user_id, 
	birthday,
	SUM(IFNULL((SELECT 
					SUM((SELECT COUNT(*) FROM vk.like GROUP BY post_id HAVING post_id=vk.post.id)) 
				FROM vk.post
				GROUP BY user_id
				HAVING user_id=vk.profile.user_id), 0) 
		+
		IFNULL((SELECT 
					SUM((SELECT COUNT(*) FROM vk.like GROUP BY media_id HAVING media_id=vk.media.id)) 
				FROM vk.media
				GROUP BY user_id
				HAVING user_id=vk.profile.user_id), 0) 
		+
		IFNULL((SELECT 
					SUM((SELECT COUNT(*) FROM vk.like GROUP BY message_id HAVING message_id=vk.message.id)) 
				FROM vk.message
				GROUP BY from_user_id
				HAVING from_user_id=vk.profile.user_id), 0)) as like_num

FROM vk.profile
group by user_id with rollup
HAVING birthday >= (SELECT birthday FROM vk.profile ORDER BY birthday DESC LIMIT 9,1)
