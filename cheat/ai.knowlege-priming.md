https://martinfowler.com/articles/reduce-friction-ai/knowledge-priming.html

> Notice: It is under 50 lines. That is the target. Focused, specific, actionable

````
# Acme API - Priming Context

## Quick Overview

B2B SaaS API for inventory management. Multi-tenant, event-driven.

## Stack

- Node.js 20, Fastify 4, TypeScript 5
- PostgreSQL 15 + Prisma 5 (multi-tenant via tenantId)
- Auth: Clerk (external), JWT validation middleware
- Queue: BullMQ + Redis for async jobs
- Testing: Vitest

## Trusted Sources

### Docs

- Fastify: https://fastify.dev/docs/latest
- Prisma multi-tenancy: https://www.prisma.io/docs/orm/prisma-client/queries/multi-tenancy
  
### Skills

You have access to the following skills, but not limited to:

- component-architecture
- cqrs-primitives
- developer-docs
- distributed-systems
- ecto
- elixir-core
- elixir-otp
- elixir-testing
- elixir-typespec
- event-modeling-wireframes
- livebook
- notebook
- phoenix
- phoenix-auth
- phoenix-contexts
- phoenix-html
- phoenix-liveview
- task-based-ui
- test-heuristics
- vertical-slice

### Blogs We Follow

- BullMQ patterns: [team-vetted blog on queue handling]

### Internal

- ADRs: docs/adr/ (architecture decisions)
- Error handling: docs/error-conventions.md

## Structure

src/
├── modules/           # Feature modules (users/, products/, orders/)
│   └── [module]/
│       ├── service.ts    # Business logic
│       ├── routes.ts     # HTTP handlers
│       ├── schema.ts     # Zod schemas
│       └── types.ts      # TypeScript types
├── shared/            # Cross-cutting (db, auth, queue)
└── config/            # Env config

## Patterns

- Functional services (no classes)
- All queries include `where: { tenantId }` (multi-tenant)
- Validation at route level with Zod
- Errors thrown as `AppError` with status codes

## Anti-patterns

- No classes for services
- No raw SQL (use Prisma)
- No business logic in routes
- No hardcoded tenantId

## Example Service

[Include one short example from the codebase]
````