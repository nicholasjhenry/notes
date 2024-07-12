```elixir
def flush_task_supervisor do
  pids = Task.Supervisor.children(MyApp.TaskSupervisor)

  for pid <- pids do
    ref = Process.monitor(pid)
    assert_receive {:DOWN, ^ref, _, _, _}
  end
end
```

```elixir
test "does something async" do
  MyApp.do_something_async()

  flush_task_supervisor()

  assert MyApp.check_something()
end
```

https://dockyard.com/blog/2024/06/06/a-better-solution-for-waiting-for-async-tasks-in-tests