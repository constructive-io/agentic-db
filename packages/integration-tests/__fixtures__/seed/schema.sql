-- Schema for agentic-db ORM integration tests
-- Modeled after constructive/graphql/orm-test/__fixtures__/seed/schema.sql

CREATE EXTENSION IF NOT EXISTS vector;

CREATE SCHEMA IF NOT EXISTS "agentic_db_app_public";

-- =============================================================================
-- Table: contacts
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contacts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name text NOT NULL,
  last_name text,
  email text,
  phone text,
  headline text,
  bio text,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: notes
-- =============================================================================
CREATE TABLE "agentic_db_app_public".notes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  content text NOT NULL,
  abstract text,
  overview text,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: agents
-- =============================================================================
CREATE TABLE "agentic_db_app_public".agents (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  system_prompt text,
  model text,
  status text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: agent_tasks
-- =============================================================================
CREATE TABLE "agentic_db_app_public".agent_tasks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid NOT NULL REFERENCES "agentic_db_app_public".agents(id) ON DELETE CASCADE,
  title text NOT NULL,
  description text,
  status text,
  priority int,
  result text,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: contact_notes (junction — M:N)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contact_notes (
  contact_id uuid NOT NULL REFERENCES "agentic_db_app_public".contacts(id) ON DELETE CASCADE,
  note_id uuid NOT NULL REFERENCES "agentic_db_app_public".notes(id) ON DELETE CASCADE,
  PRIMARY KEY (contact_id, note_id)
);

-- Enable many-to-many for this junction table
COMMENT ON TABLE "agentic_db_app_public".contact_notes IS E'@behavior +manyToMany';

-- =============================================================================
-- Table: contact_chunks (for embedding chunking)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contact_chunks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  contact_id uuid NOT NULL REFERENCES "agentic_db_app_public".contacts(id) ON DELETE CASCADE,
  content text NOT NULL,
  chunk_index int NOT NULL DEFAULT 0,
  embedding vector(768),
  created_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: note_chunks (for embedding chunking)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".note_chunks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  note_id uuid NOT NULL REFERENCES "agentic_db_app_public".notes(id) ON DELETE CASCADE,
  content text NOT NULL,
  chunk_index int NOT NULL DEFAULT 0,
  embedding vector(768),
  created_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Indexes
-- =============================================================================
CREATE INDEX agent_tasks_agent_id_idx ON "agentic_db_app_public".agent_tasks (agent_id);
CREATE INDEX contact_notes_contact_id_idx ON "agentic_db_app_public".contact_notes (contact_id);
CREATE INDEX contact_notes_note_id_idx ON "agentic_db_app_public".contact_notes (note_id);
CREATE INDEX contact_chunks_contact_id_idx ON "agentic_db_app_public".contact_chunks (contact_id);
CREATE INDEX note_chunks_note_id_idx ON "agentic_db_app_public".note_chunks (note_id);

-- =============================================================================
-- Grant schema and table permissions
-- =============================================================================
GRANT USAGE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT CREATE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contacts TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".notes TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".agents TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".agent_tasks TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contact_notes TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contact_chunks TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".note_chunks TO PUBLIC;
