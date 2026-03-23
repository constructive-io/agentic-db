-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_records_id/alterations/alt0000003447
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_records_id/column


ALTER TABLE agentic_db_app_public.autonomy_records_chunks 
  ALTER COLUMN autonomy_records_id SET NOT NULL;

