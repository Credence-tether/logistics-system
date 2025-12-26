
      UPDATE shipments
      SET
        status = {{params.status}},
        progress = {{params.progress}}::int,
        actual_delivery = {{params.actualDelivery}}::date,
        updated_at = NOW()
      WHERE id = {{params.shipmentId}}::bigint
      RETURNING id, tracking_number, status, progress;
    