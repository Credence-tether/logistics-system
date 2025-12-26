
      SELECT 
        id,
        action,
        quantity_change,
        location,
        event_date,
        created_at
      FROM inventory_history
      WHERE inventory_id = {{params.inventoryId}}::bigint
      ORDER BY event_date DESC
      LIMIT 20;
    