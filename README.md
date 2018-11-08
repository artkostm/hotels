### Tables (https://www.kaggle.com/c/expedia-hotel-recommendations/data):

Load train.csv.gz into hdfs by running ```hdfs dfs -put train.csv.gz /tmp/test/hotels/train.csv.gz```

#### Fields

|Column name |	Description |	Data type |
|:-----------|:-------------|----------:|
*date_time*|Timestamp|string
*site_name*|ID of the Expedia point of sale (i.e. Expedia.com, Expedia.co.uk, Expedia.co.jp, ...)|int
*posa_continent*|ID of continent associated with site_name|int
*user_location_country*|The ID of the country the customer is located|int
*user_location_region*|The ID of the region the customer is located|int
*user_location_city*|The ID of the city the customer is located|int
*orig_destination_distance*|Physical distance between a hotel and a customer at the time of search. A null means the distance could not be calculated|double
*user_id*|ID of user|int
*is_mobile*|1 when a user connected from a mobile device, 0 otherwise|tinyint
*is_package*|1 if the click/booking was generated as a part of a package (i.e. combined with a flight), 0 otherwise|int
*channel*|ID of a marketing channel|int
*srch_ci*|Checkin date|string
*srch_co*|Checkout date|string
*srch_adults_cnt*|The number of adults specified in the hotel room|int
*srch_children_cnt*|The number of (extra occupancy) children specified in the hotel room|int
*srch_rm_cnt*|The number of hotel rooms specified in the search|int
*srch_destination_id*|ID of the destination where the hotel search was performed|int
*srch_destination_type_id*|Type of destination|int
*hotel_continent*|Hotel continent|int
*hotel_country*|Hotel country|int
*hotel_market*|Hotel market|int
*is_booking*|1 if a booking, 0 if a click|tinyint
*cnt*|Numer of similar events in the context of the same user session|bigint
*hotel_cluster*|ID of a hotel cluster|int

### To create the tables above run:

```hive -f ....hql```

Console output:

```shell
[root@sandbox-hdp ~]# hive -f create_hotels_table.hql                                                                                                                                                         
log4j:WARN No such property [maxFileSize] in org.apache.log4j.DailyRollingFileAppender.                                                                                                                       
                                                                                                                                                                                                              
Logging initialized using configuration in file:/etc/hive/2.6.5.0-292/0/hive-log4j.properties                                                                                                                 
OK                                                                                                                                                                                                            
Time taken: 4.625 seconds                                                                                                                                                                                     
```

![Created tables](./img/created_tables.png "Created tables")

### To calculate Top 3 most popular countries where booking is successful (booking = 1):

```hive -f ....hql```

![Top 3 most popular countries where booking is successful](./img/top3_countries_succ_booking.png "Top 3 most popular countries where booking is successful")

### To calculate the longest period of stay of couples with children:

```hive -f ....hql```

![The longest period of stay of couples with children](./img/created_tables.png "The longest period of stay of couples with children")

### To calculate top 3 most popular hotels (treat hotel as composite key of continent, country and market) which were not booked:

> Most popular means most searches in dataset

> Not booked means column booked = 0

```hive -f ....hql```

![To calculate top 3 most popular hotels which were not booked](./img/created_tables.png "To calculate top 3 most popular hotels which were not booked")
