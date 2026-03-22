-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/id/alterations/alt0000006434
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN id SET NOT NULL;

