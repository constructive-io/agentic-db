-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_records_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ADD COLUMN autonomy_records_id uuid;

