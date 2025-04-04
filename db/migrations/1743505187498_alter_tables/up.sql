-- Add a status column to users table
ALTER TABLE users ADD COLUMN status VARCHAR(20) DEFAULT 'active';

-- Add a last login timestamp to users
ALTER TABLE users ADD COLUMN last_login_at TIMESTAMP WITH TIME ZONE;

-- Add a likes counter to posts table
ALTER TABLE posts ADD COLUMN likes_count INTEGER DEFAULT 0;

-- Change the bio column to have a default value in user_profiles
ALTER TABLE user_profiles ALTER COLUMN bio SET DEFAULT 'No bio provided';