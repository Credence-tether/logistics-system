
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
        {{params.trackingNumber}},
        {{params.status}},
        {{params.origin}},
        {{params.destination}},
        {{params.departureDate}}::date,
        {{params.estimatedDelivery}}::date,
        {{params.progress}}::int,
        {{params.userId}}::bigint
      )
      RETURNING id, tracking_number, status, origin, destination;
    