## Project setup

Init project:

```
specify init
specify check
```

## All Commands    

```
speckit.analyze
speckit.clarify
speckit.implement
speckit.specify
speckit.checklist
speckit.constitution
speckit.plan
speckit.tasks
```

## Core Commands

Establish project principles:

```
/speckit.constitution Create principles focused on code quality, testing standards, user experience consistency, and performance requirements
```

Create the spec:

```
/speckit.specify Build an application that can help me organize my photos in separate photo albums. Albums are grouped by date and can be re-organized by dragging and dropping on the main page. Albums are never in other nested albums. Within each album, photos are previewed in a tile-like interface.
```

Create a technical implementation plan

```
/speckit.plan The application uses Vite with minimal number of libraries. Use vanilla HTML, CSS, and JavaScript as much as possible. Images are not uploaded anywhere and metadata is stored in a local SQLite database.
```

Break down into tasks

```
/speckit.tasks
```

Execute implementation

```
/speckit.implement
```

## Optional Commands

```
/speckit.analyze # Clarify underspecified areas (recommended before /speckit.plan)
/speckit.clarify # Cross-artifact consistency & coverage analysis (run after /speckit.tasks, before /speckit.implement)
/speckit.checklist # Generate custom quality checklists that validate requirements completeness, clarity, and consistency (like "unit tests for English")
```