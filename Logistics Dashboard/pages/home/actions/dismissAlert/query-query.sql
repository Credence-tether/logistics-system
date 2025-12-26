
      UPDATE alerts
      SET is_dismissed = TRUE, dismissed_at = NOW()
      WHERE id = {{params.alertId}}::bigint
      RETURNING id, is_dismissed;
    