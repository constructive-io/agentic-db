-- Deploy schemas/metaschema_modules_public/tables/blueprint/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/blueprint_template/table

BEGIN;

CREATE TABLE metaschema_modules_public.blueprint (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

    -- Ownership + scoping
    owner_id uuid NOT NULL,

    database_id uuid NOT NULL,

    -- Identity
    name text NOT NULL,

    display_name text NOT NULL,

    description text,

    -- The blueprint definition (tables with nodes[] and policies[], relations with $type)
    -- This is a mutable copy — the owner can customize before executing
    definition jsonb NOT NULL,

    -- Lineage: where did this come from?
    template_id uuid DEFAULT NULL,

    -- Execution state
    status text NOT NULL DEFAULT 'draft'
        CHECK (status IN ('draft', 'constructed', 'failed')),

    constructed_at timestamptz,

    error_details text,

    -- Output: mapping of ref names to created table IDs (populated after construct)
    ref_map jsonb NOT NULL DEFAULT '{}',

    -- Snapshot of the definition at construct-time (immutable record of what was actually executed)
    constructed_definition jsonb,

    -- Content-addressable Merkle hashes (backend-computed via trigger)
    definition_hash uuid,

    table_hashes jsonb,

    created_at timestamptz NOT NULL DEFAULT now(),

    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT blueprint_unique_database_name UNIQUE (database_id, name),
    CONSTRAINT blueprint_db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT blueprint_template_fkey FOREIGN KEY (template_id) REFERENCES metaschema_modules_public.blueprint_template (id)
);

COMMENT ON TABLE metaschema_modules_public.blueprint IS
    'An owned, executable blueprint scoped to a specific database. Created by copying from a blueprint_template via copy_template_to_blueprint() or built from scratch. The owner can customize the definition before executing it with construct_blueprint(). Each blueprint tracks its execution status (draft/constructed/failed) and stores the ref_map of created table IDs after construction.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.id IS
    'Unique identifier for this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.owner_id IS
    'The user who owns this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.database_id IS
    'The database this blueprint is scoped to. Tables created by construct_blueprint() are provisioned in this database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.name IS
    'Machine-readable name for the blueprint. Must be unique per database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.display_name IS
    'Human-readable display name for the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.description IS
    'Optional description of the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition IS
    'The blueprint definition as a JSONB document. Same format as blueprint_template.definition: contains tables[] (with nodes[], fields[], grants[], policies[] using $type) and relations[] (using $type). This is a mutable copy that the owner can customize before executing.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.template_id IS
    'If this blueprint was created by copying a template, the ID of the source template. NULL if built from scratch.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.status IS
    'Execution state of the blueprint. draft: not yet executed (definition can still be modified). constructed: successfully executed via construct_blueprint(). failed: execution failed (see error_details). Defaults to draft.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.constructed_at IS
    'Timestamp when construct_blueprint() successfully completed. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.error_details IS
    'Error message from the most recent failed construct_blueprint() attempt. NULL unless status is failed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.ref_map IS
    'Mapping of ref names to created table UUIDs, populated by construct_blueprint() after successful execution. Format: {"products": "uuid", "categories": "uuid", ...}. Defaults to empty object.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.constructed_definition IS
    'Immutable snapshot of the definition at construct-time. Preserved so the exact definition that was executed is recorded even if the user later modifies the definition for re-execution. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.created_at IS
    'Timestamp when this blueprint was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition_hash IS
    'UUIDv5 Merkle root hash of the definition. Computed automatically via trigger from the ordered table_hashes. Used for content-addressable deduplication and provenance tracking. Backend-computed — clients should never set this directly.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.table_hashes IS
    'JSONB map of table ref names to their individual UUIDv5 content hashes. Each table hash is computed from the canonical jsonb::text of the table entry. Enables structural comparison at the table level across blueprints and templates. Backend-computed via trigger.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.updated_at IS
    'Timestamp when this blueprint was last modified.';


CREATE INDEX blueprint_owner_id_idx ON metaschema_modules_public.blueprint (owner_id);
CREATE INDEX blueprint_database_id_idx ON metaschema_modules_public.blueprint (database_id);
CREATE INDEX blueprint_template_id_idx ON metaschema_modules_public.blueprint (template_id);
CREATE INDEX blueprint_status_idx ON metaschema_modules_public.blueprint (status);
CREATE INDEX blueprint_definition_hash_idx ON metaschema_modules_public.blueprint (definition_hash);

COMMIT;
