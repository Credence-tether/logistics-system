
      INSERT INTO inventory_items (
        product_name,
        category,
        quantity,
        location,
        status,
        reorder_level,
        last_restocked
      )
      VALUES (
        {{params.productName}},
        {{params.category}},
        {{params.quantity}}::int,
        {{params.location}},
        {{params.status}},
        {{params.reorderLevel}}::int,
        {{params.lastRestocked}}::date
      )
      RETURNING id, product_name, category, quantity, status;
    