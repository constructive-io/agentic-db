-- Revert: schemas/agent_db_app_public/tables/company_documents/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".company_documents 
  DISABLE ROW LEVEL SECURITY;


