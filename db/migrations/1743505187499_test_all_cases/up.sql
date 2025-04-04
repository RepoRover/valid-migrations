-- Test ALTER COLUMN TYPE
ALTER TABLE users ALTER COLUMN email TYPE VARCHAR(320);

-- Test multiple column modifications in single ALTER TABLE
ALTER TABLE posts 
  ALTER COLUMN title TYPE VARCHAR(300),
  ALTER COLUMN published SET NOT NULL,
  ALTER COLUMN content SET UNIQUE;

-- Test dropping constraints
ALTER TABLE user_profiles 
  ALTER COLUMN bio DROP NOT NULL,
  ALTER COLUMN avatar_url DROP UNIQUE;

-- Test SET/DROP DEFAULT
ALTER TABLE posts 
  ALTER COLUMN published SET DEFAULT TRUE,
  ALTER COLUMN likes_count DROP DEFAULT;