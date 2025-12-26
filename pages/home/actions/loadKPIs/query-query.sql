
      SELECT
        (SELECT COUNT(*) FROM shipments) as total_shipments,
        (SELECT COUNT(*) FROM vehicles WHERE status = 'Active') as active_vehicles,
        (SELECT COUNT(*) FROM inventory_items) as inventory_items,
        (SELECT ROUND(AVG(on_time_delivery), 2) FROM performance_metrics WHERE year = EXTRACT(YEAR FROM NOW())) as on_time_delivery;
    