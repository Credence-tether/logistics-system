
      SELECT
        vp.vehicle_id,
        v.vehicle_number,
        vp.deliveries,
        vp.avg_speed,
        vp.fuel_used,
        vp.efficiency,
        vp.recorded_at
      FROM vehicle_performance vp
      JOIN vehicles v ON v.id = vp.vehicle_id
      ORDER BY vp.recorded_at DESC
      LIMIT 10;
    