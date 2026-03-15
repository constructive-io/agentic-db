# Agent OS Schema

The Agent OS database (`agentic-db`) is a schema-isolated tenant within the Constructive platform. It consists of 34 tables organized into functional domains.

## Core Capabilities
- **Vector Search:** All primary entities have a `vector(768)` embedding column indexed with HNSW.
- **Full-Text Search:** High-value text fields use BM25 (`pg_textsearch`) and/or Trigram (`pg_trgm`) indexes.
- **Tags:** Most entities have a `tags` array (`citext[]`) for categorization.
- **Soft Deletes:** Standard pattern where supported.

---

## 1. CRM Domain
Manage relationships, organizations, and interactions.

### `Contact`
People and relationships.
- **Fields:** `firstName`, `lastName`, `email`, `phone`, `headline`, `bio`, `location`
- **Search:** `searchTsv` (Weighted TSVector), `vector(768)` embedding, Trigram on names.
- **Relations:** `companies`, `events`, `notes`, `deals`.

### `Company`
Organizations and businesses.
- **Fields:** `name`, `domain`, `industry`, `description`
- **Search:** BM25 on `description`, Trigram on `name`, `vector(768)`.
- **Relations:** `contacts` (via `ContactCompany`), `deals`.

### `Deal`
Commercial opportunities.
- **Fields:** `name`, `stage` (enum), `value` (numeric), `notes`
- **Relations:** `contacts` (via `DealContact`), `companies`.

### `Event`
Calendar events, meetings, and conferences.
- **Fields:** `name`, `eventType`, `startedAt`, `endedAt`, `location`, `city`, `notes`
- **Search:** BM25 on `notes`, Trigram on `name`.
- **Relations:** `contacts` (via `ContactEvent`), `venues`.

### `Venue`
Physical locations (restaurants, offices).
- **Fields:** `name`, `city`, `neighborhood`, `status`, `notes`
- **Search:** BM25 on `notes`.
- **Relations:** `events` (via `EventVenue`).

### `Note`
Free-form text attached to entities.
- **Fields:** `content`, `contactId`
- **Search:** BM25 on `content`, `vector(768)`.

---

## 2. Agent Domain
Core memory and behavior for AI agents.

### `Task`
Action items and todos.
- **Fields:** `title`, `description`, `status`, `priority`
- **Search:** BM25 on `description`, `vector(768)`.

### `Memory`
Long-term semantic memory storage.
- **Fields:** `content`, `tags`
- **Search:** BM25 on `content`, `vector(768)`.

### `Skill`
Capabilities and tools available to the agent.
- **Fields:** `name`, `description`, `content` (code/prompt), `isActive`
- **Search:** BM25 on `content`/`description`, Trigram on `name`.

### `Rule`
Behavioral constraints and directives.
- **Fields:** `title`, `content`, `kind` (e.g., 'safety', 'style'), `isActive`
- **Search:** `vector(768)`.

---

## 3. Life OS Domain
Personal data integration.

### `Message`
Emails, SMS, and DMs.
- **Fields:** `subject`, `bodyText`, `from`, `to`, `receivedAt`, `threadId`
- **Search:** BM25 on `bodyText`, `vector(768)`.
- **Relations:** `emailAccount`.

### `EmailAccount`
Connected inboxes.
- **Fields:** `email`, `provider`, `syncState`.

### `CalendarSync`
Calendar provider state.
- **Fields:** `provider`, `syncToken`.

### `Expense`
Financial transactions.
- **Fields:** `amount`, `currency`, `merchant`, `description`, `category`, `date`
- **Search:** BM25 on `description`/`merchant`.

### `Document`
Files, web pages, and knowledge base items.
- **Fields:** `title`, `url`, `content`, `sourceType`
- **Search:** BM25 on `content`, `vector(768)`.

---

## 4. Codebase Domain
Source code indexing and retrieval.

### `Repository`
Git repositories.
- **Fields:** `name`, `url`, `description`, `defaultBranch`
- **Search:** Trigram on `name`.

### `File`
Source files within a repo.
- **Fields:** `path`, `language`, `hash`
- **Relations:** `repository`, `chunks`.

### `Chunk`
Vectorized code segments.
- **Fields:** `content`, `startLine`, `endLine`
- **Search:** HNSW `vector(768)` (primary code search).

---

## 5. Runtime Domain
Execution history and audit logs.

### `Session`
Agent execution sessions.
- **Fields:** `title`, `status`, `contextSummary`, `startedAt`
- **Search:** BM25 on `contextSummary`.

### `Chat` & `ChatMessage`
Conversational history.
- **Fields:** `role` (user/assistant), `content`, `toolCalls`
- **Search:** HNSW `vector(768)` on messages.

### `ExecutionLog`
Step-by-step trace of agent actions.
- **Fields:** `stepName`, `input`, `output`, `durationMs`.

### `Blueprint`
Workflows and plans.
- **Fields:** `title`, `steps` (JSON), `triggerConditions`.

---

## Common Features
- **Tags:** `tags` column (`citext[]`) on almost all entities for flexible categorization.
- **Embeddings:** `embedding` column (`vector(768)`) on almost all entities for semantic RAG.
- **Images:** `Image` table linked via `mainImageId` to `Contact`, `Company`, `Event`, `Venue`.
