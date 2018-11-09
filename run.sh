
hive SET hive.cli.print.header=true;

echo "Task #1 is running"

echo "Creating tables..."

HOTELS_TABLE_NAME=$1
HOTELS_FILE_LOCATION=$2

hive --hiveconf -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-d HOTELS_FILE_LOCATION=${HOTELS_FILE_LOCATION} \
-f create_hotels_table.hql

hive --hiveconf -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_top3_countries_with_succ_booking.hql

echo "Task #2 is running"

hive --hiveconf -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_longest_period_of_stay.hql

echo "Task #3 is running"

hive --hiveconf -d HOTELS_TABLE_NAME=${HOTELS_TABLE_NAME} \
-S -f select_top3_hotels_from_clicks.hql

echo "Done"
