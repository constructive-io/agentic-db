-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/target_record_id/alterations/alt0000006450
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/target_record_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_autonomy_record_id_idx


ALTER TABLE agentic_db_app_public.autonomy_record_links 
  ALTER COLUMN target_record_id SET NOT NULL;

