-- Revert: schemas/agentic_db_app_public/tables/list_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".list_chunks 
  DISABLE ROW LEVEL SECURITY;


