-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/alterations/alt0000001823
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  DISABLE ROW LEVEL SECURITY;

