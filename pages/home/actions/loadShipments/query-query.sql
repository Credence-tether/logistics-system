
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
        (COALESCE({{params.status}}, '') = '' OR status = {{params.status}})
        AND (COALESCE({{params.search}}, '') = '' OR tracking_number LIKE {{ '%' + params.search + '%' }})
      ORDER BY created_at DESC;
    