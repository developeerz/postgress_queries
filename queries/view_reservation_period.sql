SELECT 
    r.reservation_id,
    r.user_id,
    u.user_name,
    u.user_surname,
    t.table_id,
    t.table_number,
    t.seats_number,
    t.type AS table_type,
    res.restaurant_id,
    res.name AS restaurant_name,
    r.reservation_time_from,
    r.reservation_time_to,
    r.status
FROM reservations r
JOIN users u ON r.user_id = u.user_id
JOIN tables t ON r.table_id = t.table_id
JOIN restaurants res ON t.restaurant_id = res.restaurant_id
WHERE r.reservation_time_from >= :start_time 
  AND r.reservation_time_to <= :end_time
ORDER BY r.reservation_time_from;
