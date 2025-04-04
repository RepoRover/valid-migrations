-- Drop tables in reverse order to avoid foreign key constraint issues
DROP TABLE IF EXISTS users_roles;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS user_profiles;
