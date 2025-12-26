
      SELECT 
        id,
        event_type,
        location,
        description,
        event_date
      FROM shipment_timeline
      WHERE shipment_id = {{params.shipmentId}}::bigint
      ORDER BY event_date DESC;
    