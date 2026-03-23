-- Schema seed for agentic-db integration tests
-- Creates a minimal subset of agentic_db_app_public tables for ORM testing
-- Modeled after constructive/graphql/orm-test/__fixtures__/seed/schema.sql

CREATE EXTENSION IF NOT EXISTS "pgcrypto";
CREATE EXTENSION IF NOT EXISTS "citext";

-- helper: uuidv7 if not already available
CREATE OR REPLACE FUNCTION uuidv7() RETURNS uuid AS $$
  SELECT gen_random_uuid();
$$ LANGUAGE sql;

CREATE SCHEMA IF NOT EXISTS "agentic_db_app_public";

-- =============================================================================
-- Table: contacts
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contacts (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  first_name text NOT NULL,
  last_name text,
  email text,
  phone text,
  headline text,
  bio text,
  location text,
  website text,
  linkedin_url text,
  github_username text,
  twitter_handle text,
  instagram_handle text,
  how_we_met text,
  relationship_type text,
  birthday date,
  main_image_id uuid,
  tags citext[],
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  search_tsv tsvector,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Table: notes
-- =============================================================================
CREATE TABLE "agentic_db_app_public".notes (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  content text NOT NULL,
  abstract text,
  overview text,
  active_count int,
  tags citext[],
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  last_accessed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Table: agents
-- =============================================================================
CREATE TABLE "agentic_db_app_public".agents (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  name text NOT NULL,
  description text,
  system_prompt text,
  model text,
  status text,
  config jsonb,
  temperature numeric,
  tags citext[],
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Table: agent_tasks
-- =============================================================================
CREATE TABLE "agentic_db_app_public".agent_tasks (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  agent_id uuid NOT NULL REFERENCES "agentic_db_app_public".agents(id) ON DELETE CASCADE,
  title text NOT NULL,
  description text,
  status text,
  priority int,
  result text,
  meta jsonb,
  started_at timestamptz,
  completed_at timestamptz,
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Table: contact_notes (junction — M:N)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contact_notes (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  contact_id uuid NOT NULL REFERENCES "agentic_db_app_public".contacts(id) ON DELETE CASCADE,
  note_id uuid NOT NULL REFERENCES "agentic_db_app_public".notes(id) ON DELETE CASCADE
);

-- Enable many-to-many for this junction table
COMMENT ON TABLE "agentic_db_app_public".contact_notes IS E'@behavior +manyToMany';

-- =============================================================================
-- Table: contact_chunks (for embedding tests)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".contact_chunks (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  contact_id uuid NOT NULL REFERENCES "agentic_db_app_public".contacts(id) ON DELETE CASCADE,
  content text NOT NULL,
  chunk_index int NOT NULL,
  embedding vector(768),
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Table: note_chunks (for embedding tests)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".note_chunks (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  note_id uuid NOT NULL REFERENCES "agentic_db_app_public".notes(id) ON DELETE CASCADE,
  content text NOT NULL,
  chunk_index int NOT NULL,
  embedding vector(768),
  embedding_text text,
  embedding_stale boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- =============================================================================
-- Indexes
-- =============================================================================
CREATE INDEX contact_chunks_contact_id_idx ON "agentic_db_app_public".contact_chunks (contact_id);
CREATE INDEX note_chunks_note_id_idx ON "agentic_db_app_public".note_chunks (note_id);
CREATE INDEX agent_tasks_agent_id_idx ON "agentic_db_app_public".agent_tasks (agent_id);

-- =============================================================================
-- Grant permissions (needed for graphile-test roles)
-- =============================================================================
GRANT ALL ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT ALL ON ALL TABLES IN SCHEMA "agentic_db_app_public" TO PUBLIC;
