-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".agents_chunks 
  DISABLE ROW LEVEL SECURITY;


