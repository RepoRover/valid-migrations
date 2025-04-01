-- Drop indexes
-- DROP INDEX IF EXISTS idx_user_profiles_user_id;
-- DROP INDEX IF EXISTS idx_posts_user_id;
-- DROP INDEX IF EXISTS idx_users_roles_user_id;
-- DROP INDEX IF EXISTS idx_users_roles_role_id;

-- Drop tables in reverse order to avoid foreign key constraint issues
DROP TABLE IF EXISTS users_roles;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS user_profiles;
