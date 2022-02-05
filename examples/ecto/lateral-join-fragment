def determine_classifications(query) do
  from [_endpoint, mappings] in query,
    left_lateral_join:
      objective in fragment(
        "SELECT ARRAY(
          SELECT classification
            FROM objectives o
            JOIN objective_endpoint_mappings oem
            ON o.id = oem.objective_id
            WHERE oem.endpoint_id = ?
            GROUP BY classification
        ) AS classifications",
        mappings.endpoint_id
      ),
    select_merge: %{classifications: objective.classifications}
end
