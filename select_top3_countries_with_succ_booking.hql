SELECT c.country, c.num FROM (
  SELECT h.hotel_country country, COUNT(*) num FROM hotels h WHERE h.is_booking = 1 GROUP BY h.hotel_country
) c ORDER BY c.num DESC LIMIT 3
