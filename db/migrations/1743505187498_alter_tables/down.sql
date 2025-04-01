-- Drop the index on users table
DROP INDEX IF EXISTS idx_users_name;

-- Remove the default value from bio in user_profiles
ALTER TABLE user_profiles ALTER COLUMN bio DROP DEFAULT;

-- Drop the likes_count column from posts
ALTER TABLE posts DROP COLUMN IF EXISTS likes_count;

-- Drop the last_login_at column from users
ALTER TABLE users DROP COLUMN IF EXISTS last_login_at;

-- Drop the status column from users
ALTER TABLE users DROP COLUMN IF EXISTS status;
