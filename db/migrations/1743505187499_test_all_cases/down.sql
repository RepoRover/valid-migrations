-- Revert ALTER COLUMN TYPE
ALTER TABLE users ALTER COLUMN email TYPE VARCHAR(255);

-- Revert multiple column modifications
ALTER TABLE posts 
  ALTER COLUMN title TYPE VARCHAR(255),
  ALTER COLUMN published DROP NOT NULL,
  ALTER COLUMN content DROP UNIQUE;

-- Revert constraint drops
ALTER TABLE user_profiles 
  ALTER COLUMN bio SET NOT NULL,
  ALTER COLUMN avatar_url SET UNIQUE;

-- Revert SET/DROP DEFAULT
ALTER TABLE posts 
  ALTER COLUMN published DROP DEFAULT,
  ALTER COLUMN likes_count SET DEFAULT 0;