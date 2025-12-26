
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
        {{params.vehicleNumber}},
        {{params.driverName}},
        {{params.status}},
        {{params.latitude}}::numeric,
        {{params.longitude}}::numeric,
        {{params.address}},
        {{params.currentLoad}}::int,
        {{params.maxCapacity}}::int
      )
      RETURNING id, vehicle_number, driver_name, status;
    