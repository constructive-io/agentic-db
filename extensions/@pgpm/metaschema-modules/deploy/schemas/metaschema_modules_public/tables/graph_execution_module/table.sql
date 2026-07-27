-- Deploy schemas/metaschema_modules_public/tables/graph_execution_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/graph_module/table

BEGIN;

CREATE TABLE metaschema_modules_public.graph_execution_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table(s), recorded by the insert
    -- trigger via metaschema_generators.scope_key_column(scope, key): database ->
    -- 'database_id', entity -> the module's key ('entity_id' here), global -> NULL.
    entity_field text,
    -- Schema references (if uuid_nil, resolved from schema name or default)
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional schema name overrides (used when schema IDs are not provided)
    public_schema_name text,
    private_schema_name text,

    -- Reference to the graph module this execution module operates against.
    -- The execution module resolves definition tables (graphs, merkle store)
    -- from the linked graph_module at provision time.
    graph_module_id uuid NOT NULL,

    -- Scope: determines the security level for this module instance.
    -- Can differ from graph_module scope (e.g., platform definitions + entity executions).
    scope text NOT NULL,

    -- Table name prefix. Auto-derived from scope by the trigger when empty.
    prefix text NOT NULL DEFAULT '',

    -- Generated table IDs (populated by BEFORE INSERT trigger)
    -- Execution state tables (partitioned by time)
    executions_table_id uuid NOT NULL DEFAULT uuid_nil(),
    outputs_table_id uuid NOT NULL DEFAULT uuid_nil(),
    node_states_table_id uuid NOT NULL DEFAULT uuid_nil(),


    -- Configurable table names (bare names without scope prefix).
    -- The trigger prepends the scope prefix automatically.
    executions_table_name text NOT NULL DEFAULT 'function_graph_executions',
    outputs_table_name text NOT NULL DEFAULT 'function_graph_execution_outputs',
    node_states_table_name text NOT NULL DEFAULT 'function_graph_execution_node_states',

    -- API routing (get-or-create: if set, schema is added to this API; if NULL, no API is added)
    api_name text,
    private_api_name text,

    -- Entity table for RLS and billing attribution.
    -- When set, executions are scoped to the entity (org, app) for billing/metering.
    entity_table_id uuid NULL,

    -- Configurable security policies (NULL = use defaults based on scope).
    policies jsonb NULL,

    -- Per-table provisions overrides from blueprint config.
    -- Keys are table keys (executions, outputs, node_states).
    provisions jsonb NULL,

    -- Default permissions: permission names auto-granted to new members.
    default_permissions text[] DEFAULT NULL,

    -- Timestamps
    created_at timestamptz NOT NULL DEFAULT now(),

    -- Constraints
    CONSTRAINT graph_execution_module_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_graph_module_fkey FOREIGN KEY (graph_module_id) REFERENCES metaschema_modules_public.graph_module (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_executions_table_fkey FOREIGN KEY (executions_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_outputs_table_fkey FOREIGN KEY (outputs_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT graph_execution_module_node_states_table_fkey FOREIGN KEY (node_states_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    CONSTRAINT graph_execution_module_entity_table_fkey FOREIGN KEY (entity_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE
);

CREATE INDEX graph_execution_module_database_id_idx ON metaschema_modules_public.graph_execution_module ( database_id );

-- One execution module per (database, scope) (K8s infra: scopes never share).
CREATE UNIQUE INDEX graph_execution_module_unique_scope ON metaschema_modules_public.graph_execution_module ( database_id, scope );

COMMIT;
