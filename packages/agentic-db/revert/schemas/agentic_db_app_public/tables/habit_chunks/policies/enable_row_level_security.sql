-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DISABLE ROW LEVEL SECURITY;


