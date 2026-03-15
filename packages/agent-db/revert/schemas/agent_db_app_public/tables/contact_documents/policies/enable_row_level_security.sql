-- Revert: schemas/agent_db_app_public/tables/contact_documents/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".contact_documents 
  DISABLE ROW LEVEL SECURITY;


