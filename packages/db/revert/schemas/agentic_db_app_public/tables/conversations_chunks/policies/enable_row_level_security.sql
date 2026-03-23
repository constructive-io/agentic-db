-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  DISABLE ROW LEVEL SECURITY;


