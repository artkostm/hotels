### Tables:

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
