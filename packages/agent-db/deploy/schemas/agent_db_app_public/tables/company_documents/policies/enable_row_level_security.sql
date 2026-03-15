-- Deploy: schemas/agent_db_app_public/tables/company_documents/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_documents/table
-- requires: schemas/agent_db_app_public/tables/contact_documents/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_documents 
  ENABLE ROW LEVEL SECURITY;

