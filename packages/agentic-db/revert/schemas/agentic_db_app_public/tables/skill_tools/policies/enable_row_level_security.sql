-- Revert: schemas/agentic_db_app_public/tables/skill_tools/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".skill_tools 
  DISABLE ROW LEVEL SECURITY;


