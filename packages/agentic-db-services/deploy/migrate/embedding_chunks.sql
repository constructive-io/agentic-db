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
  ('217164ee-548e-011f-75c4-114d3f69cc9e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '37eed52f-fa1c-528c-1f77-688ac4b81f40', NULL, '11f15d42-d31c-ea7d-8f44-834098c853e6', 'contacts_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["fulltext","bm25"]', true, 'generate_chunks', NULL, NULL, '0bb6a9fd-3568-a0fc-e82c-d2a54981cdb8'),
  ('9c47d812-221a-34a9-2991-bf6f2b6b2c08', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '37730bcd-d659-4296-c0fa-65768b87d9c5', NULL, '26bd0202-4d25-fc3d-1bbc-3db1553225b9', 'notes_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["bm25"]', true, 'generate_chunks', NULL, NULL, '18e2561c-f16b-d7f9-369e-3c4e968b5aca'),
  ('adf63b86-f518-3d7c-173b-d3506125a380', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '0656baa1-4248-6e66-72be-f9ad387c9cf0', NULL, '50349977-3ce4-e21b-ac01-060a259e4a7a', 'documents_chunks', 'content', 768, 'cosine', 1000, 200, 'fixed', NULL, '["bm25"]', true, 'generate_chunks', NULL, NULL, 'f9821189-8e0f-39e3-610a-d8122abbfe20');


SET session_replication_role TO DEFAULT;


