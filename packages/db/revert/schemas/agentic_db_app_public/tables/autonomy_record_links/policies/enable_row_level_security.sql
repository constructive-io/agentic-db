-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  DISABLE ROW LEVEL SECURITY;


