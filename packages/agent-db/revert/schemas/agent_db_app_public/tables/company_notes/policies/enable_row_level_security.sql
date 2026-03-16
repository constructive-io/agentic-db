-- Revert: schemas/agent_db_app_public/tables/company_notes/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".company_notes 
  DISABLE ROW LEVEL SECURITY;


