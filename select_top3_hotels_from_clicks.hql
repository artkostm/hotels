SELECT * FROM (
  SELECT 
    h.hotel_continent,
    h.hotel_country,
    h.hotel_market,
	  count(*) cnt
  FROM ${HOTELS_TABLE_NAME} h 
  WHERE h.is_booking = 0
  GROUP BY 
    h.hotel_continent,
    h.hotel_country,
    h.hotel_market
) clicks
SORT BY clicks.cnt DESC 
LIMIT 3
