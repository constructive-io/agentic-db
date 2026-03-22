-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/target_record_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_autonomy_record_id_idx


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ADD COLUMN target_record_id uuid;

