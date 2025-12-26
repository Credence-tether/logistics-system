
      INSERT INTO users (email, name, password_hash, role)
      VALUES (:param0, :param1, :param2, :param3)
      RETURNING id, email, name, role, created_at;
    