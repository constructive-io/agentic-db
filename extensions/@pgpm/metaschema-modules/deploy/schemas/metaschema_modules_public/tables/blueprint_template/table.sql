-- Deploy schemas/metaschema_modules_public/tables/blueprint_template/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.blueprint_template (
    id uuid PRIMARY KEY DEFAULT uuidv7(),

    -- Identity
    name text NOT NULL,

    version text NOT NULL DEFAULT '1.0.0',

    display_name text NOT NULL,

    description text,

    -- Ownership
    owner_id uuid NOT NULL,

    -- Visibility
    visibility text NOT NULL DEFAULT 'private'
        CHECK (visibility IN ('private', 'public')),

    -- Categorization
    categories text[] NOT NULL DEFAULT '{}',

    tags text[] NOT NULL DEFAULT '{}',

    -- The blueprint definition (tables with nodes[] and policies[], relations with $type)
    definition jsonb NOT NULL,

    -- Schema for validating definition structure
    definition_schema_version text NOT NULL DEFAULT '1',

    -- Provenance
    source text NOT NULL DEFAULT 'user'
        CHECK (source IN ('user', 'system', 'agent')),

    -- Complexity indicator
    complexity text DEFAULT NULL
        CHECK (complexity IS NULL OR complexity IN ('simple', 'moderate', 'complex')),

    -- Marketplace stats (denormalized for query perf)
    copy_count integer NOT NULL DEFAULT 0,

    fork_count integer NOT NULL DEFAULT 0,

    -- If this template was forked from another
    forked_from_id uuid DEFAULT NULL,

    -- Content-addressable Merkle hashes (backend-computed via trigger)
    definition_hash uuid,

    table_hashes jsonb,

    created_at timestamptz NOT NULL DEFAULT now(),

    updated_at timestamptz NOT NULL DEFAULT now(),

    CONSTRAINT blueprint_template_unique_owner_name_version UNIQUE (owner_id, name, version),
    CONSTRAINT blueprint_template_forked_from_fkey FOREIGN KEY (forked_from_id) REFERENCES metaschema_modules_public.blueprint_template(id)
);

COMMENT ON TABLE metaschema_modules_public.blueprint_template IS
    'A shareable, versioned schema recipe for the blueprint marketplace. Templates define arrays of secure_table_provision + relation_provision inputs that together describe a complete domain schema (e.g. e-commerce, telemedicine, habit tracker). Templates are never executed directly — they are copied into a blueprint first via copy_template_to_blueprint(). Can be private (owner-only) or public (marketplace-visible).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.id IS
    'Unique identifier for this template.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.name IS
    'Machine-readable name for the template (e.g. e_commerce_basic). Must be unique per owner + version.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.version IS
    'Semantic version string. Defaults to 1.0.0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.display_name IS
    'Human-readable display name for the template (e.g. E-Commerce Basic).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.description IS
    'Optional description of what the template provisions.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.owner_id IS
    'The user who created or published this template.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.visibility IS
    'Access control for the template. private: only the owner can see and copy. public: anyone can browse and copy from the marketplace. Defaults to private.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.categories IS
    'Domain categories for marketplace browsing (e.g. e-commerce, healthcare, social). Defaults to empty array.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.tags IS
    'Freeform tags for search and discovery (e.g. products, orders, payments). Defaults to empty array.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition IS
    'The blueprint definition as a JSONB document. Contains tables[] (each with nodes[] for data behaviors via string shorthand or {"$type": "...", "data": {...}} objects, fields[], grants[], and policies[] using {"$type": "...", "data": {...}}), and relations[] (using $type for relation_type with junction config in data). This is the core payload that gets copied into a blueprint for execution.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition_schema_version IS
    'Version of the definition format schema. Used for forward-compatible parsing. Defaults to 1.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.source IS
    'Provenance of the template. user: manually created by a human. system: official curated template from the Constructive team. agent: AI-generated. Defaults to user.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.complexity IS
    'Complexity indicator for marketplace filtering. simple: 3-5 tables. moderate: 6-12 tables. complex: 13+ tables. NULL if not categorized.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.copy_count IS
    'Denormalized count of how many blueprints have been created from this template via copy_template_to_blueprint(). Incremented automatically. Defaults to 0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.fork_count IS
    'Denormalized count of how many derivative templates have been forked from this template. Defaults to 0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.forked_from_id IS
    'If this template was forked from another template, the ID of the parent. NULL for original templates.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.created_at IS
    'Timestamp when this template was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition_hash IS
    'UUIDv5 Merkle root hash of the definition. Computed automatically via trigger from the ordered table_hashes. Used for content-addressable deduplication, provenance tracking, and cross-blueprint structural comparison. NULL columns are backend-computed — clients should never set this directly.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.table_hashes IS
    'JSONB map of table ref names to their individual UUIDv5 content hashes (e.g. {"products": "uuid", "categories": "uuid"}). Each table hash is computed from the canonical jsonb::text of the table entry. Enables structural comparison at the table level across different blueprints. Backend-computed via trigger.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.updated_at IS
    'Timestamp when this template was last modified.';


CREATE INDEX blueprint_template_owner_id_idx ON metaschema_modules_public.blueprint_template (owner_id);
CREATE INDEX blueprint_template_visibility_idx ON metaschema_modules_public.blueprint_template (visibility);
CREATE INDEX blueprint_template_forked_from_id_idx ON metaschema_modules_public.blueprint_template (forked_from_id);
CREATE INDEX blueprint_template_categories_idx ON metaschema_modules_public.blueprint_template USING gin (categories);
CREATE INDEX blueprint_template_tags_idx ON metaschema_modules_public.blueprint_template USING gin (tags);
CREATE INDEX blueprint_template_definition_hash_idx ON metaschema_modules_public.blueprint_template (definition_hash);

COMMIT;
