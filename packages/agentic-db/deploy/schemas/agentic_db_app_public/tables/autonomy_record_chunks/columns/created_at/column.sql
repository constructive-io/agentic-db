-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  ADD COLUMN created_at timestamptz;

