
      SELECT id, email, name, role, created_at
      FROM users
      WHERE email = {{params.email}}
        AND password_hash = {{params.passwordHash}};
    