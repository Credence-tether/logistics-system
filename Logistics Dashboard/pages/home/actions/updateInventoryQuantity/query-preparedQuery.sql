
      UPDATE inventory_items
      SET
        quantity = :param0::int,
        status = CASE
          WHEN :param1::int = 0 THEN 'Out of Stock'
          WHEN :param2::int < reorder_level THEN 'Low Stock'
          ELSE 'In Stock'
        END,
        updated_at = NOW()
      WHERE id = :param3::bigint
      RETURNING id, product_name, quantity, status;
    