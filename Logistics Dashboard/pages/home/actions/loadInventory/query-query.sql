
      SELECT 
        id,
        product_name,
        category,
        quantity,
        location,
        status,
        reorder_level,
        last_restocked,
        created_at,
        updated_at
      FROM inventory_items
      WHERE
        (COALESCE({{params.status}}, '') = '' OR status = {{params.status}})
        AND (COALESCE({{params.category}}, '') = '' OR category = {{params.category}})
        AND (COALESCE({{params.location}}, '') = '' OR location = {{params.location}})
      ORDER BY created_at DESC;
    