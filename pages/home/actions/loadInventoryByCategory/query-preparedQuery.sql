
      SELECT
        category,
        SUM(quantity) as quantity
      FROM inventory_items
      GROUP BY category
      ORDER BY quantity DESC;
    