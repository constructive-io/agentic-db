# Constructive App Boilerplate

A **frontend-only** Next.js boilerplate with authentication, organization management, invites, members, and a GraphQL SDK powered by Constructive.

> **⚠️ Important:** This is a frontend application only. It requires a running Constructive backend infrastructure to function properly.

## Tech Stack

- **Next.js 16** (App Router, Turbopack)
- **React 19**
- **Tailwind CSS 4** + shadcn/ui (Base UI)
- **TanStack React Query** for data fetching
- **GraphQL** with codegen SDK

## Backend Requirements

This boilerplate connects to a Constructive backend. For full functionality (including password reset emails, job processing, etc.), you need:

| Service | Port | Purpose |
|---------|------|---------|
| **PostgreSQL** | 5432 | Database with Constructive schema |
| **GraphQL Server (Public)** | 3000 | API endpoint for app operations |
| **GraphQL Server (Private)** | 3002 | Admin operations |
| **Job Service** | 8080 | Background job processing |
| **Email Function** | 8082 | Email sending via SMTP |
| **Mailpit SMTP** | 1025 | Email server (development) |
| **Mailpit UI** | 8025 | View sent emails |

### Running with Constructive Hub

The easiest way to run the full stack:

```bash
# Terminal 1: Start backend infrastructure
cd /path/to/constructive-hub
pnpm start

# Terminal 2: Start this frontend
cd /path/to/constructive-app
pnpm install
pnpm dev
```

Open [http://localhost:3001](http://localhost:3001).

## Scripts

| Script | Description |
|--------|-------------|
| `pnpm dev` | Start dev server (Turbopack, port 3001) |
| `pnpm build` | Production build |
| `pnpm lint` | ESLint |
| `pnpm lint:types` | TypeScript type check |
| `pnpm format` | Prettier format |
| `pnpm codegen` | Regenerate GraphQL SDK |

## Configuration

### Environment Variables

Create a `.env.local` file:

```bash
# GraphQL endpoint (must point to a running Constructive backend)
NEXT_PUBLIC_SCHEMA_BUILDER_GRAPHQL_ENDPOINT=http://api.localhost:3000/graphql
```

### Customization

- **`src/config/branding.ts`** — App name, logos, and legal links
- **`graphql-codegen.config.ts`** — GraphQL codegen configuration

## UI Components (shadcn Registry)

UI components live in `src/components/ui/` as local source files, following the [shadcn/ui](https://ui.shadcn.com) pattern. Components are installed from the Constructive registry and can be fully customized.

```bash
# Add a component from the registry
npx shadcn@latest add @constructive/<component>
```

Registry URL is configured in `components.json`. Components use **Base UI** primitives, **Tailwind CSS 4**, and **cva** for variants.

| Directory | Contents |
|-----------|----------|
| `src/components/ui/` | UI components (button, dialog, input, etc.) |
| `src/lib/utils.ts` | `cn()` utility for class merging |
| `src/hooks/` | Shared hooks (use-mobile, use-portal, etc.) |

## Features

- **Authentication** — Login, register, logout, password reset
- **Organizations** — Create and manage organizations
- **Invites** — Send and accept organization invites
- **Members** — Manage organization members and roles
- **Account Management** — Profile, email verification, account deletion

> **Note:** Password reset emails require the full backend stack (job service + email function) to be running.
