-- Deploy: schemas/agent_db_app_public/tables/company_images/columns/company_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_images/table
-- requires: schemas/agent_db_app_public/tables/contact_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_images 
  ADD COLUMN company_id uuid;

