
      SELECT 
        id,
        alert_type,
        severity,
        title,
        message,
        entity_type,
        entity_id,
        is_read,
        is_dismissed,
        created_at,
        read_at,
        dismissed_at
      FROM alerts
      WHERE is_dismissed = FALSE
      ORDER BY 
        CASE severity
          WHEN 'critical' THEN 1
          WHEN 'warning' THEN 2
          WHEN 'info' THEN 3
        END,
        created_at DESC
      LIMIT 50;
    