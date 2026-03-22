-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/alterations/alt0000006446
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/autonomy_record_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/triggers/autonomy_record_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ALTER COLUMN autonomy_record_id SET NOT NULL;

