-- Deploy schemas/metaschema_public/tables/embedding_chunks/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/database/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/tables/field/table

BEGIN;

CREATE TABLE metaschema_public.embedding_chunks (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL DEFAULT uuid_nil(),

    table_id uuid NOT NULL,
    embedding_field_id uuid,
    chunks_table_id uuid,
    chunks_table_name text,

    -- content field configuration
    content_field_name text NOT NULL DEFAULT 'content',

    -- embedding configuration
    dimensions int NOT NULL DEFAULT 768,
    metric text NOT NULL DEFAULT 'cosine',

    -- chunking configuration
    chunk_size int NOT NULL DEFAULT 1000,
    chunk_overlap int NOT NULL DEFAULT 200,
    chunk_strategy text NOT NULL DEFAULT 'fixed',

    -- metadata fields from parent to copy into chunks
    metadata_fields jsonb,

    -- search indexes to create on the chunks content column
    -- NULL means "mirror parent table's text search indexes"
    search_indexes jsonb,

    -- job configuration
    enqueue_chunking_job boolean NOT NULL DEFAULT true,
    chunking_task_name text NOT NULL DEFAULT 'generate_chunks',

    -- model config (optional — worker falls back to runtime config when null)
    embedding_model text,
    embedding_provider text,

    -- FK field on chunks table pointing to parent
    parent_fk_field_id uuid,

    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now(),

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT chunks_table_fkey FOREIGN KEY (chunks_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT embedding_field_fkey FOREIGN KEY (embedding_field_id) REFERENCES metaschema_public.field (id) ON DELETE SET NULL,
    CONSTRAINT parent_fk_field_fkey FOREIGN KEY (parent_fk_field_id) REFERENCES metaschema_public.field (id) ON DELETE SET NULL,

    CONSTRAINT valid_metric CHECK (metric IN ('cosine', 'l2', 'ip')),
    CONSTRAINT valid_chunk_strategy CHECK (chunk_strategy IN ('fixed', 'sentence', 'paragraph', 'semantic')),
    CONSTRAINT valid_dimensions CHECK (dimensions > 0),
    CONSTRAINT valid_chunk_size CHECK (chunk_size > 0),
    CONSTRAINT valid_chunk_overlap CHECK (chunk_overlap >= 0 AND chunk_overlap < chunk_size)
);


CREATE INDEX embedding_chunks_table_id_idx ON metaschema_public.embedding_chunks ( table_id );
CREATE INDEX embedding_chunks_database_id_idx ON metaschema_public.embedding_chunks ( database_id );
CREATE INDEX embedding_chunks_chunks_table_id_idx ON metaschema_public.embedding_chunks ( chunks_table_id );

COMMIT;
