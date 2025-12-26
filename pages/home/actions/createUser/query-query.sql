
      INSERT INTO users (email, name, password_hash, role)
      VALUES ({{params.email}}, {{params.name}}, {{params.passwordHash}}, {{params.role}})
      RETURNING id, email, name, role, created_at;
    