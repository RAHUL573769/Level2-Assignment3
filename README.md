#   ------------------  Question -1:-----------------

## Query 1 Answer: JOIN
```
SELECT
  booking_id,
  name AS user_name,
  vehicle_name,
  start_date,
  end_date,
  status
FROM
  bookings AS b
  JOIN users AS u USING (user_id)
  JOIN vehicles AS v USING (vehicle_id);

```
# 
## Explanation 


```
Here select is used to display booking_id customer_name	vehicle_name start_date end_date status after performing join between bookings and vehicles tables and final result is displayed 
```
#   ------------------  Question -2:-----------------

## Query 2 Answer: 
```
SELECT
  *
FROM
  vehicles
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      bookings
    WHERE
      vehicles.vehicle_id = bookings.vehicle_id
  );

```
# 
## Explanation 


```
Here select command is used to select  all columns from the vehicles table and then NOT EXISTS command is used to select  Show vehicles where NO matching booking exists
```

#   ------------------  Question -3:-----------------

## Query 3 Answer: 
```
SELECT * FROM vehicles WHERE type='car';

```
# 
## Explanation 


```
In this query where clause is used to select  only vehicles   of type car
```


#   ------------------  Question -4:-----------------

## Query 4 Answer:
```
SELECT
  v.vehicle_name,
  COUNT(v.vehicle_id) AS total_bookings
FROM
  vehicles AS v
  JOIN bookings USING (vehicle_id)
GROUP BY
  vehicle_id
HAVING
  COUNT(vehicle_id) > 2;

```
# 
## Explanation 


```
In this query Group by and having clause are used to count Vehicles booked more than 2 times
```



















