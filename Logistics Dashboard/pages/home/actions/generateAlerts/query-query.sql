
      -- Run all alert checking functions
      SELECT check_delayed_shipments();
      SELECT check_low_stock();
      SELECT check_vehicle_maintenance();
      SELECT check_idle_vehicles();
      
      -- Return count of new alerts
      SELECT COUNT(*) as new_alerts
      FROM alerts
      WHERE created_at > NOW() - INTERVAL '5 minutes';
    