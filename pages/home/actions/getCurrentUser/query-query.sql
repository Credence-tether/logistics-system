
      SELECT id, email, name, role, created_at
      FROM users
      WHERE email = {{ user.email }};
    