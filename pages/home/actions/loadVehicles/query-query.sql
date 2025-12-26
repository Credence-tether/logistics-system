
      SELECT 
        id,
        vehicle_number,
        driver_name,
        status,
        latitude,
        longitude,
        location_address,
        current_load,
        max_capacity,
        created_at,
        updated_at
      FROM vehicles
      WHERE
        COALESCE({{params.status}}, '') = ''
        OR status = {{params.status}}
      ORDER BY updated_at DESC;
    