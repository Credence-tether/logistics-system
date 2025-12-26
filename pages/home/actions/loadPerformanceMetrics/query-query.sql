
      SELECT
        month,
        year,
        on_time_delivery,
        avg_delivery_time,
        fuel_efficiency,
        cost,
        created_at
      FROM performance_metrics
      WHERE year >= EXTRACT(YEAR FROM NOW()) - 1
      ORDER BY year DESC, id DESC;
    