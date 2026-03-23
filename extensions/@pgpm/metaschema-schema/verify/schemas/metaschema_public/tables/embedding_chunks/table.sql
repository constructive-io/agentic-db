-- Verify schemas/metaschema_public/tables/embedding_chunks/table on pg

BEGIN;

SELECT
    id,
    database_id,
    table_id,
    embedding_field_id,
    chunks_table_id,
    chunks_table_name,
    content_field_name,
    dimensions,
    metric,
    chunk_size,
    chunk_overlap,
    chunk_strategy,
    metadata_fields,
    enqueue_chunking_job,
    chunking_task_name,
    parent_fk_field_id
FROM metaschema_public.embedding_chunks
WHERE FALSE;

ROLLBACK;
