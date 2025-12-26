
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
        (COALESCE(:param0, '') = '' OR status = :param1)
        AND (COALESCE(:param2, '') = '' OR category = :param3)
        AND (COALESCE(:param4, '') = '' OR location = :param5)
      ORDER BY created_at DESC;
    