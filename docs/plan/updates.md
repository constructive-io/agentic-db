# Agentic OS Feature Parity Plan

This document outlines the roadmap to bring `agent-os` to feature parity with the legacy `avengers` database. The goal is to migrate all core functionality (excluding `smart_home`) into the new multi-tenant, secure-by-default, AI-native platform.

## Core Philosophy

*   **Multi-tenancy:** All new schemas must be tenant-aware (`Org` or `User` ownership).
*   **AI-Native:** All primary entities must have `vector(768)` embedding columns for native RAG support.
*   **Provisioned:** All schemas must be defined in TypeScript provisioning scripts (e.g., `packages/provision/src/schemas/`), not raw SQL migrations.

## 1. Project Management Module
**Status:** 🔴 Missing
**Legacy Schema:** `crm` (`projects`, `project_contacts`, `milestones`)

We need a dedicated `projects` module to organize work and link it to the existing CRM entities.

### Proposed Schema (`schemas/projects.ts`)
*   **`projects`**
    *   `name` (text, required)
    *   `description` (text)
    *   `status` (text: 'active', 'archived', 'planned')
    *   `start_date` (timestamptz)
    *   `due_date` (timestamptz)
    *   `embedding` (vector(768))
*   **`milestones`**
    *   `project_id` (fk)
    *   `name` (text)
    *   `due_date` (timestamptz)
    *   `embedding` (vector(768))

### Relations
*   `projects` ↔ `contacts` (Many-to-Many via `project_contacts`)
*   `projects` → `tasks` (One-to-Many: Tasks belong to Projects)

## 2. Agent Runtime Module
**Status:** 🟡 Partial (Tasks/Memories exist, Execution missing)
**Legacy Schema:** `agent` (`sessions`, `blueprints`, `processes`, `resource_log`, `cron_jobs`)

The current `agent` schema defines *what* the agent knows (Memories) and *what* it should do (Tasks), but not *how* it does it (Runtime/Execution).

### Proposed Schema Updates (`schemas/agent.ts`)
*   **`sessions`** (The "Runtime" log)
    *   `title` (text)
    *   `started_at` (timestamptz)
    *   `ended_at` (timestamptz)
    *   `status` (text: 'running', 'completed', 'failed')
    *   `context_summary` (text)
    *   `embedding` (vector(768))
*   **`blueprints`** (Standard Operating Procedures)
    *   `title` (text)
    *   `steps` (jsonb/text - structured plan)
    *   `trigger_conditions` (text)
    *   `embedding` (vector(768))
*   **`execution_log`** (Granular steps)
    *   `session_id` (fk)
    *   `step_name` (text)
    *   `input` (text)
    *   `output` (text)
    *   `tool_calls` (jsonb)
    *   `duration_ms` (integer)

## 3. Codebase Intelligence Module
**Status:** 🔴 Missing
**Legacy Schema:** `codebase` (`repos`, `files`, `chunks`), `code` (`bench_runs`)

This is critical for the "Software Engineer" persona. It allows the agent to ingest, index, and query code repositories.

### Proposed Schema (`schemas/codebase.ts`)
*   **`repositories`**
    *   `name` (text)
    *   `url` (text)
    *   `description` (text)
    *   `default_branch` (text)
    *   `last_synced_at` (timestamptz)
    *   `embedding` (vector(768))
*   **`files`**
    *   `repository_id` (fk)
    *   `path` (text)
    *   `language` (text)
    *   `hash` (text)
*   **`chunks`** (The core RAG unit for code)
    *   `file_id` (fk)
    *   `repository_id` (fk)
    *   `content` (text)
    *   `start_line` (integer)
    *   `end_line` (integer)
    *   `embedding` (vector(768))

## 4. Communications Module (Email/Calendar)
**Status:** 🔴 Missing
**Legacy Schema:** `email` (`messages`, `ingest`), `calendar` (`events`, `sync_state`)

### Proposed Schema (`schemas/communications.ts`)
*   **`email_accounts`**
    *   `email` (text)
    *   `provider` (text: 'gmail', 'smtp')
    *   `sync_state` (jsonb - cursors/watermarks)
*   **`messages`**
    *   `account_id` (fk)
    *   `thread_id` (text)
    *   `remote_id` (text)
    *   `from` (text)
    *   `to` (text[])
    *   `subject` (text)
    *   `body_text` (text)
    *   `received_at` (timestamptz)
    *   `embedding` (vector(768))
*   **`calendar_sync`**
    *   `provider` (text)
    *   `sync_token` (text)
    *   `last_synced_at` (timestamptz)

*(Note: The core `events` table already exists in `crm.ts`, but needs syncing logic tables).*

## 5. Finance Module (Accounting)
**Status:** 🔴 Missing
**Legacy Schema:** `accounting` (`expenses`, `monthly_summary`)

### Proposed Schema (`schemas/accounting.ts`)
*   **`expenses`**
    *   `amount` (numeric)
    *   `currency` (text)
    *   `date` (date)
    *   `category` (text)
    *   `description` (text)
    *   `merchant` (text)
    *   `receipt_url` (text)
    *   `embedding` (vector(768)) — *Allows semantic search over spending (e.g., "Find all coffee purchases")*

## 6. Knowledge Base
**Status:** 🔴 Missing (Partially covered by `crm.notes` / `agent.memories`)
**Legacy Schema:** `kb` (`documents`)

We need a general-purpose document store for things that aren't quite "memories" and aren't "code" (e.g., PDFs, research papers, web scrapes).

### Proposed Schema (`schemas/knowledge.ts`)
*   **`documents`**
    *   `title` (text)
    *   `url` (text)
    *   `content` (text)
    *   `source_type` (text: 'pdf', 'web', 'text')
    *   `embedding` (vector(768))

## Implementation Roadmap

1.  **Phase 1: Project & Runtime** (High Priority)
    *   Create `schemas/projects.ts`
    *   Update `schemas/agent.ts` with execution tables.
2.  **Phase 2: Codebase Intelligence**
    *   Create `schemas/codebase.ts`
3.  **Phase 3: Life OS**
    *   Create `schemas/communications.ts`
    *   Create `schemas/accounting.ts`
    *   Create `schemas/knowledge.ts`
