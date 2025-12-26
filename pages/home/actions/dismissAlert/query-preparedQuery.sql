
      UPDATE alerts
      SET is_dismissed = TRUE, dismissed_at = NOW()
      WHERE id = :param0::bigint
      RETURNING id, is_dismissed;
    