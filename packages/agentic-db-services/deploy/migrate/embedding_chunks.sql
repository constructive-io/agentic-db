-- Deploy: migrate/embedding_chunks
-- made with <3 @ constructive.io

-- requires: migrate/trigger


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.embedding_chunks (
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
  search_indexes,
  enqueue_chunking_job,
  chunking_task_name,
  embedding_model,
  embedding_provider,
  parent_fk_field_id
) VALUES
  ('a30f2ccb-2266-6ec0-70c2-bb7ba374bd5c', '019fa679-9064-7be8-b12a-f974608356ce', '8a9a840b-10a5-ee10-4627-8b372bea2e28', NULL, '05fabb64-c1e4-494b-f916-46613aa9eb3e', 'contacts_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["fulltext","bm25"]', true, 'generate_chunks', NULL, NULL, 'e63a0a37-f58c-5d52-9d96-1a8b72cadc64'),
  ('e0f38a65-2aa9-5577-74d4-78172394b87b', '019fa679-9064-7be8-b12a-f974608356ce', '586ba0f6-d0c6-826a-e684-84b89a1d58cb', NULL, '76c9520c-aabe-d9a2-baa0-cfa0c5ebf49e', 'documents_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["bm25"]', true, 'generate_chunks', NULL, NULL, '1be005cc-64a6-421e-e3de-46fabaa22e0a'),
  ('e6fbd4b6-5636-0744-8755-7dcfc32532a7', '019fa679-9064-7be8-b12a-f974608356ce', '74b70c74-94ad-ebce-3b90-77799064954c', NULL, '3b95812c-0c31-78c3-f1d0-c4188a054157', 'notes_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["bm25"]', true, 'generate_chunks', NULL, NULL, '48711a92-c72a-49f8-22e8-4cc0e856efeb');


SET session_replication_role TO DEFAULT;


