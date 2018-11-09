SELECT 
	MAX(datediff(h.srch_co, h.srch_ci)) days 
FROM ${HOTELS_TABLE_NAME} h 
WHERE h.srch_adults_cnt = 2 AND h.srch_children_cnt > 0
