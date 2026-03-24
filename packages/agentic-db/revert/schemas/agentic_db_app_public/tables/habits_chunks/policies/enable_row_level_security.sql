-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".habits_chunks 
  DISABLE ROW LEVEL SECURITY;


