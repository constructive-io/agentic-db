-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".autonomy_records 
  ENABLE ROW LEVEL SECURITY;

