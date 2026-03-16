-- Revert: schemas/agent_db_app_public/tables/company_links/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".company_links 
  DISABLE ROW LEVEL SECURITY;


