
      SELECT 
        id,
        vehicle_id,
        latitude,
        longitude,
        location_address,
        speed,
        heading,
        recorded_at
      FROM vehicle_gps_history
      WHERE vehicle_id = {{params.vehicleId}}::bigint
      ORDER BY recorded_at DESC
      LIMIT {{params.limit}}::int;
    