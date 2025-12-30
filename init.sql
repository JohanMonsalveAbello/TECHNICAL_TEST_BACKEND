CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (email, password)
VALUES (
  'admin@test.com',
  '$2b$12$AWVGI03paeuOUASL5JLuC.yNaBgXho0b1wMWad49JHbTH/Ge2EoZq'
)
ON CONFLICT (email) DO NOTHING;
