CREATE EXTERNAL TABLE IF NOT EXISTS hotels (
  date_time STRING,
  site_name INT,
  posa_continent INT,
  user_location_country INT,
  user_location_region INT,
  user_location_city INT,
  orig_destination_distance DOUBLE,
  user_id INT,
  is_mobile TINYINT,
  is_package INT,
  channel INT,
  srch_ci STRING,
  srch_co STRING,
  srch_adults_cnt INT,
  srch_children_cnt INT,
  srch_rm_cnt INT,
  srch_destination_id INT,
  srch_destination_type_id INT,
  is_booking TINYINT,
  cnt BIGINT,
  hotel_continent INT,
  hotel_country INT,
  hotel_market INT,
  hotel_cluster INT)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
LOCATION '/tmp/test/hotels'
TBLPROPERTIES("skip.header.line.count"="1");
