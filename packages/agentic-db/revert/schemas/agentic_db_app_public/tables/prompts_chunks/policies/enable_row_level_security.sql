-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  DISABLE ROW LEVEL SECURITY;


