-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".goal_chunks 
  DISABLE ROW LEVEL SECURITY;


