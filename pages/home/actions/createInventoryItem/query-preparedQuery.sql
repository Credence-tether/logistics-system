
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
        :param0,
        :param1,
        :param2::int,
        :param3,
        :param4,
        :param5::int,
        :param6::date
      )
      RETURNING id, product_name, category, quantity, status;
    