
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
      WHERE vehicle_id = :param0::bigint
      ORDER BY recorded_at DESC
      LIMIT :param1::int;
    