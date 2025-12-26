
      INSERT INTO vehicle_gps_history (
        vehicle_id,
        latitude,
        longitude,
        location_address,
        speed,
        heading
      )
      VALUES (
        :param0::bigint,
        :param1::numeric,
        :param2::numeric,
        :param3,
        :param4::numeric,
        :param5::numeric
      )
      RETURNING id, vehicle_id, latitude, longitude, recorded_at;
    