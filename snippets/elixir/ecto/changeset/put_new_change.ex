defp put_new_change(changeset, attrs, field, default_value) do
  defaults = put_change(changeset, field, default_value)
  changeset = cast(changeset, attrs, [field])

  merge(defaults, changeset)
end
