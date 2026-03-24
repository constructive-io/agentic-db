-- Revert: schemas/agentic_db_app_public/tables/autonomy_records_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  DISABLE ROW LEVEL SECURITY;


