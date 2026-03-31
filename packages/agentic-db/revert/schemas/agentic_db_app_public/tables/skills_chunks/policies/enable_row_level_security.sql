-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".skills_chunks 
  DISABLE ROW LEVEL SECURITY;


