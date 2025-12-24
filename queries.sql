-- Query 1: JOIN
-- Retrieve booking information along with:

-- Customer name
-- Vehicle name

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

-- Query 2: EXISTS
-- Find all vehicles that have never been booked.

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

-- Query 3: WHERE
-- Retrieve all available vehicles of a specific type (e.g. cars).

SELECT * FROM vehicles WHERE type='car';


-- Query 4: GROUP BY and HAVING
-- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

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
