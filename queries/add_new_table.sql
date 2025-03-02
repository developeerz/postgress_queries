INSERT INTO tables (restaurant_id, table_number, seats_number, type)
VALUE 
    (:restaurant_id, :table_number, :seats_number, :type),
RETURNING table_id;