
      UPDATE inventory_items
      SET
        quantity = {{params.quantity}}::int,
        status = CASE
          WHEN {{params.quantity}}::int = 0 THEN 'Out of Stock'
          WHEN {{params.quantity}}::int < reorder_level THEN 'Low Stock'
          ELSE 'In Stock'
        END,
        updated_at = NOW()
      WHERE id = {{params.inventoryId}}::bigint
      RETURNING id, product_name, quantity, status;
    