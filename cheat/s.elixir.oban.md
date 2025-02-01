- **worker**: A _module_ in Elixir that defines how Oban should execute a particular task, including any code, options, and error handling.
- **queue**: - A  _named data structure_ that organizes and prioritizes jobs for workers to execute, managing concurrency and order within Oban’s background processing system.
- **job**: A _persistent record_ that represents a single unit of work scheduled for processing by an Oban worker, containing instructions and metadata about how and when to run.

That is, define **worker** modules.

https://github.com/oban-bg/oban_training/
