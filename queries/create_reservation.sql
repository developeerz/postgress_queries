INSERT INTO reservations (user_id, table_id, reservation_time_from, reservation_time_to, status, created_at)
VALUES (:user_id, :table_id, :reservation_time_from, :reservation_time_to, :status, NOW())
RETURNING reservation_id;
