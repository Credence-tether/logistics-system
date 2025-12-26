
      UPDATE vehicles
      SET
        latitude = {{params.latitude}}::numeric,
        longitude = {{params.longitude}}::numeric,
        location_address = {{params.address}},
        status = {{params.status}},
        updated_at = NOW()
      WHERE id = {{params.vehicleId}}::bigint
      RETURNING id, vehicle_number, status, latitude, longitude;
    