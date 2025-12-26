
      INSERT INTO vehicles (
        vehicle_number,
        driver_name,
        status,
        latitude,
        longitude,
        location_address,
        current_load,
        max_capacity
      )
      VALUES (
        :param0,
        :param1,
        :param2,
        :param3::numeric,
        :param4::numeric,
        :param5,
        :param6::int,
        :param7::int
      )
      RETURNING id, vehicle_number, driver_name, status;
    