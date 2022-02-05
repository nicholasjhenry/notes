    defp order_by_status(query) do
      order_by(query, [q], fragment("CASE WHEN ? = 'in_progress' THEN 0 ELSE 1 END", q.status))
    end
