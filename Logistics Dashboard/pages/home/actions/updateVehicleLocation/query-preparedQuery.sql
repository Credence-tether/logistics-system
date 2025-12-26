
      UPDATE vehicles
      SET
        latitude = :param0::numeric,
        longitude = :param1::numeric,
        location_address = :param2,
        status = :param3,
        updated_at = NOW()
      WHERE id = :param4::bigint
      RETURNING id, vehicle_number, status, latitude, longitude;
    