SELECT 
	MAX(datediff(h.srch_co, h.srch_ci)) days 
FROM hotels h 
WHERE h.srch_adults_cnt = 2 AND h.srch_children_cnt > 0
