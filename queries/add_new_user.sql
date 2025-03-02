INSERT INTO "users" (
    "user_name", 
    "user_surname", 
    "email", 
    "password", 
    "created_at", 
    "updated_at", 
    "is_verified"
) 
VALUES (
    :user_name,        -- Имя пользователя
    :user_surname,     -- Фамилия пользователя
    :email,            -- Email пользователя
    :password,         -- Хеш пароля
    CURRENT_TIMESTAMP,  -- Дата создания (текущая дата и время)
    CURRENT_TIMESTAMP,  -- Дата обновления (текущая дата и время)
    :is_verified       -- Статус подтверждения (TRUE или FALSE)
) 
RETURNING "user_id";    -- Возвращаем "user_id" нового пользователя