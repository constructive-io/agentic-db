-- Deploy: schemas/agent_db_app_public/tables/company_images/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_images/table
-- requires: schemas/agent_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_images 
  ENABLE ROW LEVEL SECURITY;

