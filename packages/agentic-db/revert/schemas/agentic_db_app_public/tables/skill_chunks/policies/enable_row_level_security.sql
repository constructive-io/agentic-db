-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".skill_chunks 
  DISABLE ROW LEVEL SECURITY;


