-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/alterations/alt0000002096
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  DISABLE ROW LEVEL SECURITY;

