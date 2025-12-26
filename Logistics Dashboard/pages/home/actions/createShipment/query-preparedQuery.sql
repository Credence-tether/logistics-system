
      INSERT INTO shipments (
        tracking_number,
        status,
        origin,
        destination,
        departure_date,
        estimated_delivery,
        progress,
        created_by
      )
      VALUES (
        :param0,
        :param1,
        :param2,
        :param3,
        :param4::date,
        :param5::date,
        :param6::int,
        :param7::bigint
      )
      RETURNING id, tracking_number, status, origin, destination;
    