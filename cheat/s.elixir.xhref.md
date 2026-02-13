Compile-time cyclic dependencies:

```
mix xref graph --format cycles --label compile-connected
```

Compile-time references:

```
mix xref trace path/to/file.ex
```
