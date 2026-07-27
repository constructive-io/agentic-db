-- Deploy schemas/metaschema_modules_public/tables/agent_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.agent_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,


  -- Scope-key column name on the generated table(s), recorded by the insert
  -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
  -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
  entity_field text,
  -- Schema references (if uuid_nil, resolved from schema name or default)
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,

  -- Generated table IDs (populated by the generator)
  thread_table_id uuid NOT NULL DEFAULT uuid_nil(),
  message_table_id uuid NOT NULL DEFAULT uuid_nil(),
  task_table_id uuid NOT NULL DEFAULT uuid_nil(),
  prompts_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plan_table_id uuid DEFAULT NULL,
  agent_table_id uuid DEFAULT NULL,
  persona_table_id uuid DEFAULT NULL,
  resource_table_id uuid DEFAULT NULL,

  -- Table names (input to the generator)
  thread_table_name text NOT NULL DEFAULT 'agent_thread',
  message_table_name text NOT NULL DEFAULT 'agent_message',
  task_table_name text NOT NULL DEFAULT 'agent_task',
  prompts_table_name text NOT NULL DEFAULT 'agent_prompt',
  plan_table_name text NOT NULL DEFAULT 'agent_plan',
  agent_table_name text NOT NULL DEFAULT 'agent',
  persona_table_name text NOT NULL DEFAULT 'agent_persona',
  resource_table_name text NOT NULL DEFAULT 'agent_resource',

  -- Feature flags
  has_plans boolean NOT NULL DEFAULT false,
  has_resources boolean NOT NULL DEFAULT false,
  has_agents boolean NOT NULL DEFAULT false,
  shared boolean NOT NULL DEFAULT false,

  -- API routing (configurable per-module)
  api_name text DEFAULT 'agent',
  private_api_name text DEFAULT NULL,

  -- Scope: determines the security level for this module instance.
  -- Resolved to a membership_type integer at trigger time via membership_types table.
  scope text NOT NULL,

  -- Table name prefix. Auto-derived from scope by the trigger when empty.
  -- Override to create multiple module instances at the same scope.
  prefix text NOT NULL DEFAULT '',

  -- Entity table for RLS (NULL for app-level, entity table for entity-scoped)
  entity_table_id uuid NULL,

  -- Configurable security policies (NULL = use defaults based on scope)
  policies jsonb NULL,

  -- Resource configuration array (dimensions, chunk_size, chunk_strategy, etc.)
  -- NULL = use sensible defaults (768d, 1000 chunk_size, paragraph strategy)
  -- Example: [{"dimensions": 1536, "chunk_size": 500, "chunk_strategy": "sentence"}]
  resources jsonb NULL,

  -- Per-table provisions overrides from blueprint config.
  -- Keys are table keys (thread, message, task, prompt, knowledge).
  -- When a key is present, the module trigger skips default security for that table;
  -- secure_table_provision applies the custom grants/policies instead.
  provisions jsonb NULL,

  -- Default permissions: permission names auto-granted to new members.
  -- NULL uses the module's built-in defaults; explicit array overrides them.
  default_permissions text[] DEFAULT NULL,

  -- Constraints
  CONSTRAINT agent_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_thread_table_fkey FOREIGN KEY (thread_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_message_table_fkey FOREIGN KEY (message_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_task_table_fkey FOREIGN KEY (task_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_prompts_table_fkey FOREIGN KEY (prompts_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_plan_table_fkey FOREIGN KEY (plan_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_agent_table_fkey FOREIGN KEY (agent_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_persona_table_fkey FOREIGN KEY (persona_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_resource_table_fkey FOREIGN KEY (resource_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
  CONSTRAINT agent_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX agent_module_database_id_idx ON metaschema_modules_public.agent_module ( database_id );

-- Unique constraint: one agent module per database per scope per prefix.
CREATE UNIQUE INDEX agent_module_unique_scope ON metaschema_modules_public.agent_module ( database_id, scope, prefix );

COMMIT;
