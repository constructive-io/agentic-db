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
-- Table: tasks
-- =============================================================================
CREATE TABLE "agentic_db_app_public".tasks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid REFERENCES "agentic_db_app_public".agents(id) ON DELETE NO ACTION,
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
-- Table: memories (Life-OS long-term episodic memory)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".memories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid REFERENCES "agentic_db_app_public".agents(id) ON DELETE SET NULL,
  title text NOT NULL,
  content text,
  location text,
  occurred_at timestamptz,
  mood text,
  tags text[],
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: conversations (titled, agent-scoped chat sessions)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".conversations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid REFERENCES "agentic_db_app_public".agents(id) ON DELETE SET NULL,
  title text NOT NULL,
  status text,
  meta jsonb,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: messages (chat messages within a conversation)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".messages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  conversation_id uuid NOT NULL REFERENCES "agentic_db_app_public".conversations(id) ON DELETE CASCADE,
  role text NOT NULL,
  content text NOT NULL,
  token_count int,
  meta jsonb,
  tool_calls jsonb,
  tool_results jsonb,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: tool_definitions (JSON-schema tool specs)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".tool_definitions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  tool_type text,
  schema jsonb,
  config jsonb,
  is_active boolean DEFAULT true,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: skills (named capabilities with intent_trigger)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".skills (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid NOT NULL REFERENCES "agentic_db_app_public".agents(id) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  category text,
  implementation text,
  config jsonb,
  is_active boolean DEFAULT true,
  intent_trigger text,
  embedding_text text,
  embedding vector(768),
  intent_trigger_embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: skill_tools (M:N junction: skill <-> tool_definition)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".skill_tools (
  skill_id uuid NOT NULL REFERENCES "agentic_db_app_public".skills(id) ON DELETE CASCADE,
  tool_definition_id uuid NOT NULL REFERENCES "agentic_db_app_public".tool_definitions(id) ON DELETE CASCADE,
  PRIMARY KEY (skill_id, tool_definition_id)
);

COMMENT ON TABLE "agentic_db_app_public".skill_tools IS E'@behavior +manyToMany';

-- =============================================================================
-- Table: rules (declarative trigger/action pairs)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".rules (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_id uuid NOT NULL REFERENCES "agentic_db_app_public".agents(id) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  trigger_type text,
  trigger_config jsonb,
  action_type text,
  action_config jsonb,
  is_active boolean DEFAULT true,
  priority int DEFAULT 0,
  trigger_concept text,
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: tool_executions (every tool invocation)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".tool_executions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  tool_definition_id uuid NOT NULL REFERENCES "agentic_db_app_public".tool_definitions(id) ON DELETE CASCADE,
  message_id uuid REFERENCES "agentic_db_app_public".messages(id) ON DELETE SET NULL,
  input jsonb,
  output jsonb,
  status text,
  started_at timestamptz,
  completed_at timestamptz,
  duration_ms int,
  error text,
  created_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: projects (named projects with status/priority)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".projects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  status text,
  project_type text,
  priority int DEFAULT 0,
  started_at timestamptz,
  target_date timestamptz,
  completed_at timestamptz,
  config jsonb,
  tags text[],
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: goals (Life-OS goals)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".goals (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  description text,
  status text,
  target_date timestamptz,
  progress text,
  tags text[],
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: habits (Life-OS recurring habits)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".habits (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  frequency text,
  streak int DEFAULT 0,
  last_completed_at timestamptz,
  tags text[],
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: expenses (accounting / expense tracking)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".expenses (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  description text,
  amount numeric(14, 2),
  currency text,
  category text,
  occurred_at timestamptz,
  vendor text,
  notes text,
  tags text[],
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: autonomy_records (self-managed knowledge units)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".autonomy_records (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  record_type text,
  content text,
  status text,
  priority int DEFAULT 0,
  source text,
  context jsonb,
  tags text[],
  embedding_text text,
  embedding vector(768),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- =============================================================================
-- Table: autonomy_record_links (self-referential M:N knowledge graph)
-- =============================================================================
CREATE TABLE "agentic_db_app_public".autonomy_record_links (
  source_record_id uuid NOT NULL REFERENCES "agentic_db_app_public".autonomy_records(id) ON DELETE CASCADE,
  target_record_id uuid NOT NULL REFERENCES "agentic_db_app_public".autonomy_records(id) ON DELETE CASCADE,
  PRIMARY KEY (source_record_id, target_record_id),
  CHECK (source_record_id <> target_record_id)
);

COMMENT ON TABLE "agentic_db_app_public".autonomy_record_links IS E'@behavior +manyToMany';

-- =============================================================================
-- Indexes
-- =============================================================================
CREATE INDEX tasks_agent_id_idx ON "agentic_db_app_public".tasks (agent_id);
CREATE INDEX contact_notes_contact_id_idx ON "agentic_db_app_public".contact_notes (contact_id);
CREATE INDEX contact_notes_note_id_idx ON "agentic_db_app_public".contact_notes (note_id);
CREATE INDEX contact_chunks_contact_id_idx ON "agentic_db_app_public".contact_chunks (contact_id);
CREATE INDEX note_chunks_note_id_idx ON "agentic_db_app_public".note_chunks (note_id);
CREATE INDEX memories_agent_id_idx ON "agentic_db_app_public".memories (agent_id);
CREATE INDEX conversations_agent_id_idx ON "agentic_db_app_public".conversations (agent_id);
CREATE INDEX messages_conversation_id_idx ON "agentic_db_app_public".messages (conversation_id);
CREATE INDEX skills_agent_id_idx ON "agentic_db_app_public".skills (agent_id);
CREATE INDEX rules_agent_id_idx ON "agentic_db_app_public".rules (agent_id);
CREATE INDEX tool_executions_tool_definition_id_idx ON "agentic_db_app_public".tool_executions (tool_definition_id);
CREATE INDEX tool_executions_message_id_idx ON "agentic_db_app_public".tool_executions (message_id);

-- =============================================================================
-- Grant schema and table permissions
-- =============================================================================
GRANT USAGE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT CREATE ON SCHEMA "agentic_db_app_public" TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contacts TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".notes TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".agents TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".tasks TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contact_notes TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".contact_chunks TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".note_chunks TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".memories TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".conversations TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".messages TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".tool_definitions TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".skills TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".skill_tools TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".rules TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".tool_executions TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".projects TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".goals TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".habits TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".expenses TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".autonomy_records TO PUBLIC;
GRANT ALL ON "agentic_db_app_public".autonomy_record_links TO PUBLIC;
