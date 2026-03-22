-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/constraints/autonomy_record_chunks_autonomy_record_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/triggers/autonomy_record_chunks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.autonomy_record_chunks 
  ADD CONSTRAINT autonomy_record_chunks_autonomy_record_id_fkey 
    FOREIGN KEY(autonomy_record_id) 
    REFERENCES agentic_db_app_public.autonomy_records (id) 
    ON DELETE CASCADE;

