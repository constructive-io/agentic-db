-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  DISABLE ROW LEVEL SECURITY;


