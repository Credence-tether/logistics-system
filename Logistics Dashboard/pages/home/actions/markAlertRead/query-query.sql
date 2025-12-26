
      UPDATE alerts
      SET is_read = TRUE, read_at = NOW()
      WHERE id = {{params.alertId}}::bigint
      RETURNING id, is_read;
    