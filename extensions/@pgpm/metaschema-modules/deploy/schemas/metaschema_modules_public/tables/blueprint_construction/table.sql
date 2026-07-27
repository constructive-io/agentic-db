-- Deploy schemas/metaschema_modules_public/tables/blueprint_construction/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint/table

BEGIN;

CREATE TABLE metaschema_modules_public.blueprint_construction (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

    -- What was constructed
    blueprint_id uuid NOT NULL,

    database_id uuid NOT NULL,

    -- The schema used as the default for tables without an explicit schema_name
    schema_id uuid,

    -- Execution state
    status text NOT NULL DEFAULT 'pending'
        CHECK (status IN ('pending', 'constructing', 'constructed', 'failed')),

    error_details text,

    -- Output: mapping of table names to created table IDs (populated after construct)
    table_map jsonb NOT NULL DEFAULT '{}',

    -- Snapshot of the definition at construct-time (immutable record of what was actually executed)
    constructed_definition jsonb,

    constructed_at timestamptz,

    created_at timestamptz NOT NULL DEFAULT now(),

    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT blueprint_construction_blueprint_fkey
        FOREIGN KEY (blueprint_id) REFERENCES metaschema_modules_public.blueprint(id) ON DELETE CASCADE,
    CONSTRAINT blueprint_construction_db_fkey
        FOREIGN KEY (database_id) REFERENCES metaschema_public.database(id) ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.blueprint_construction IS
    'Tracks individual construction attempts of a blueprint. Each time construct_blueprint() is called, a new record is created here. This separates the editable blueprint definition from its build history, allowing blueprints to be re-executed, constructed into multiple databases, and maintain an audit trail of all construction attempts.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.id IS
    'Unique identifier for this construction attempt.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.blueprint_id IS
    'The blueprint that was constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.database_id IS
    'The database the blueprint was constructed into.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.schema_id IS
    'The default schema used for tables that did not specify an explicit schema_name. NULL if not yet resolved.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.status IS
    'Execution state of this construction attempt. pending: created but not yet started. constructing: currently executing. constructed: successfully completed. failed: execution failed (see error_details).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.error_details IS
    'Error message from a failed construction attempt. NULL unless status is failed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.table_map IS
    'Mapping of table names to created table UUIDs, populated after successful construction. Format: {"products": "uuid", "categories": "uuid", ...}. Defaults to empty object.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.constructed_definition IS
    'Immutable snapshot of the definition at construct-time. Preserved so the exact definition that was executed is recorded even if the user later modifies the blueprint definition.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.constructed_at IS
    'Timestamp when construction successfully completed. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.created_at IS
    'Timestamp when this construction attempt was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.updated_at IS
    'Timestamp when this construction attempt was last modified.';


CREATE INDEX blueprint_construction_blueprint_id_idx ON metaschema_modules_public.blueprint_construction (blueprint_id);
CREATE INDEX blueprint_construction_database_id_idx ON metaschema_modules_public.blueprint_construction (database_id);
CREATE INDEX blueprint_construction_status_idx ON metaschema_modules_public.blueprint_construction (status);

COMMIT;
