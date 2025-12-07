ref: https://github.com/github/spec-kit
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

Recommended:

```
Principle 1: Test-First Development (NON-NEGOTIABLE)
Tests must be written and approved before implementation begins. Follow strict Red-Green-Refactor: write failing test, implement minimal code to pass, refactor for clarity. No feature ships without corresponding tests. Integration tests required for any cross-boundary communication (APIs, databases, external services).

Principle 2: Explicit Over Implicit
Code must be self-documenting through clear naming, explicit contracts, and obvious behavior. Magic conventions, hidden dependencies, and implicit state changes are prohibited. Function signatures must declare all dependencies. Configuration must be explicit and validated at startup.

Principle 3: Fail Fast, Fail Loud
Validate inputs at system boundaries. Errors must surface immediately with actionable messages—never silently swallow or return generic errors. Use structured logging for all error paths. Timeouts and circuit breakers required for external dependencies. Production failures must include trace context.

Principle 4: All Elixir, Phoenix, Context and related skills need to be used for implementation.
```

Output:

```
.specify/memory/constitution.md
```

Create the spec:

```
/speckit.specify Build an application that can help me organize my photos in separate photo albums. Albums are grouped by date and can be re-organized by dragging and dropping on the main page. Albums are never in other nested albums. Within each album, photos are previewed in a tile-like interface.
```

Output:

```
├── spec.md                  # Feature specification
```

Create a technical implementation plan

```
/speckit.plan The application uses Vite with minimal number of libraries. Use vanilla HTML, CSS, and JavaScript as much as possible. Images are not uploaded anywhere and metadata is stored in a local SQLite database.
```

Output:

```
├── plan.md                  # This implementation plan
├── research.md              # Technical decisions
├── data-model.md            # Database and schemas
├── quickstart.md            # TDD implementation guide
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