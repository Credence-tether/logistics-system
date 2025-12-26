
      SELECT
        TO_CHAR(created_at, 'Mon') as month,
        COUNT(*) FILTER (WHERE status = 'In Transit') as in_transit,
        COUNT(*) FILTER (WHERE status = 'Delivered') as delivered,
        COUNT(*) FILTER (WHERE status = 'Pending') as pending,
        COUNT(*) FILTER (WHERE status = 'Delayed') as delayed
      FROM shipments
      WHERE created_at >= NOW() - INTERVAL '10 months'
      GROUP BY TO_CHAR(created_at, 'Mon'), EXTRACT(MONTH FROM created_at)
      ORDER BY EXTRACT(MONTH FROM created_at);
    