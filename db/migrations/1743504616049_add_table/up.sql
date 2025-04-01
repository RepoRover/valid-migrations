-- One-to-one relationship: user profile
CREATE TABLE user_profiles (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL UNIQUE,
  bio TEXT,
  avatar_url VARCHAR(255),
  birth_date DATE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  CONSTRAINT fk_user_profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- One-to-many relationship: posts
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  published BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  CONSTRAINT fk_posts_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Many-to-many relationship: roles
CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE,
  description TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Junction table for users and roles
CREATE TABLE users_roles (
  user_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL,
  assigned_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (user_id, role_id),
  
  CONSTRAINT fk_users_roles_user_id FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  CONSTRAINT fk_users_roles_role_id FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

-- Add indexes for foreign keys for better performance
CREATE INDEX idx_user_profiles_user_id ON user_profiles(user_id);
CREATE INDEX idx_posts_user_id ON posts(user_id);
CREATE INDEX idx_users_roles_user_id ON users_roles(user_id);
CREATE INDEX idx_users_roles_role_id ON users_roles(role_id);
