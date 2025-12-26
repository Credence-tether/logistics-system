
      SELECT 
        id,
        event_type,
        location,
        description,
        event_date
      FROM shipment_timeline
      WHERE shipment_id = :param0::bigint
      ORDER BY event_date DESC;
    