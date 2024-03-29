echo "Query #1 is running"

echo "Creating tables..."

HOTELS_TABLE_NAME=$1
HOTELS_FILE_LOCATION=$2

hive -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-d HOTELS_FILE_LOCATION=${HOTELS_FILE_LOCATION} \
-f create_hotels_table.hql

hive -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_top3_countries_with_succ_booking.hql

echo "Query #2 is running"

hive -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_longest_period_of_stay.hql

echo "Query #3 is running"

hive -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_top3_hotels_from_clicks.hql

echo "Done"
