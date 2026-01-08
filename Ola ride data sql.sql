


/* 1. Retrieve all successful rides */
SELECT *
FROM ride_data
WHERE booking_status = 'Success';


/* 2. What is the average ride distance by vehicle type? */
SELECT 
    vehicle_type,
    ROUND(AVG(ride_distance)::numeric, 2) AS avg_ride_distance
FROM ride_data
GROUP BY vehicle_type
ORDER BY avg_ride_distance DESC;


/* 3. How many rides were cancelled (customer vs driver)? */
SELECT 
    booking_status,
    COUNT(*) AS cancelled_rides
FROM ride_data
WHERE booking_status IN ('Cancelled by Customer', 'Cancelled by Driver')
GROUP BY booking_status;


/* 4. What are the Top 5 pickup locations with highest ride demand? */
SELECT 
    pickup_location,
    COUNT(*) AS total_rides
FROM ride_data
GROUP BY pickup_location
ORDER BY total_rides DESC
LIMIT 5;


/* 5. What is the total revenue generated from successful rides? */
SELECT 
    ROUND(SUM(booking_value)::numeric, 2) AS total_revenue
FROM ride_data
WHERE booking_status = 'Success';


/* 7. What is the average booking value by booking status 
      (Success vs Cancelled)? */
SELECT 
    booking_status,
    ROUND(AVG(booking_value)::numeric, 2) AS avg_booking_value
FROM ride_data
GROUP BY booking_status;


/* 8. At what time of the day do most rides occur? 
      (Peak Ride Hours) */
SELECT
    EXTRACT(HOUR FROM time) AS hour_of_day,
    COUNT(*) AS total_rides
FROM ride_data
GROUP BY hour_of_day
ORDER BY total_rides DESC;


/* 9. What are the top customer cancellation reasons 
       (% share)? */
WITH cancel_reasons AS (
    SELECT
        customer_cancel_reason,
        COUNT(*) AS reason_count
    FROM ride_data
    WHERE booking_status = 'Cancelled by Customer'
    GROUP BY customer_cancel_reason
)
SELECT
    customer_cancel_reason,
    reason_count,
    ROUND(
        100.0 * reason_count / SUM(reason_count) OVER (),
        2
    ) AS percentage_share
FROM cancel_reasons
ORDER BY percentage_share DESC;


/* 10. What is the daily revenue trend for the month? */
SELECT
    date,
    ROUND(SUM(booking_value)::numeric, 2) AS daily_revenue
FROM ride_data
WHERE booking_status = 'Success'
GROUP BY date
ORDER BY date;


/* 11. Which vehicle types generate the highest revenue? 
       (Top 2) */
SELECT
    vehicle_type,
    ROUND(SUM(booking_value)::numeric, 2) AS total_revenue
FROM ride_data
WHERE booking_status = 'Success'
GROUP BY vehicle_type
ORDER BY total_revenue DESC
LIMIT 2;
