
      UPDATE alerts
      SET is_read = TRUE, read_at = NOW()
      WHERE id = :param0::bigint
      RETURNING id, is_read;
    