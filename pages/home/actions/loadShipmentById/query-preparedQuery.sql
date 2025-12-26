
      SELECT 
        id,
        tracking_number,
        status,
        origin,
        destination,
        departure_date,
        estimated_delivery,
        actual_delivery,
        progress,
        created_at,
        updated_at
      FROM shipments
      WHERE id = :param0::bigint;
    