-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".rule_chunks 
  DISABLE ROW LEVEL SECURITY;


