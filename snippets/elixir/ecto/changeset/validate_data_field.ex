defp validate_data_field(changeset, field, value) do
  if Map.fetch!(changeset.data, field) == value do
    changeset
  else
    add_error(changeset, field, "expected #{value}", val: value)
  end
end
