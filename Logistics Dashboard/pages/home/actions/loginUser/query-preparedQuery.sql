
      SELECT id, email, name, role, created_at
      FROM users
      WHERE email = :param0
        AND password_hash = :param1;
    