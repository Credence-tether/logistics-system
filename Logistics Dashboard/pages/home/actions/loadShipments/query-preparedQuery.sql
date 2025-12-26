
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
      WHERE
        (COALESCE(:param0, '') = '' OR status = :param1)
        AND (COALESCE(:param2, '') = '' OR tracking_number LIKE :param3)
      ORDER BY created_at DESC;
    