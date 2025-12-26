
      UPDATE shipments
      SET
        status = :param0,
        progress = :param1::int,
        actual_delivery = :param2::date,
        updated_at = NOW()
      WHERE id = :param3::bigint
      RETURNING id, tracking_number, status, progress;
    