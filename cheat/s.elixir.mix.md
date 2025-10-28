Mix `do`

	# the --app in mix cmd is deprecated.
	mix do --app examples TASK + TASK
	mix do --app examples cmd pwd

Default dependencies:

    [{:mix_test_watch, ">= 0.0.0", only: :dev}]

Create a dependency graph:

    mix xref graph --format dot

Remove unused deps from mix.lock:

    mix deps.clean --unlock --unused
