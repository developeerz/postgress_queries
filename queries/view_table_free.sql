SELECT t.table_id, t.table_number, t.seats_number, r.name AS restaurant_name
FROM tables t
JOIN restaurants r ON t.restaurant_id = r.restaurant_id
WHERE t.table_id NOT IN (
    SELECT table_id FROM reservations 
    WHERE reservation_time_from < :reservation_time_from
    AND reservation_time_to > :reservation_time_to
);