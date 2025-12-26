
      INSERT INTO vehicle_gps_history (
        vehicle_id,
        latitude,
        longitude,
        location_address,
        speed,
        heading
      )
      VALUES (
        {{params.vehicleId}}::bigint,
        {{params.latitude}}::numeric,
        {{params.longitude}}::numeric,
        {{params.address}},
        {{params.speed}}::numeric,
        {{params.heading}}::numeric
      )
      RETURNING id, vehicle_id, latitude, longitude, recorded_at;
    