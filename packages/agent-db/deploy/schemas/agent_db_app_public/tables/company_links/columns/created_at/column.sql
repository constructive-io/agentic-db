-- Deploy: schemas/agent_db_app_public/tables/company_links/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/company_links/table
-- requires: schemas/agent_db_app_public/tables/company_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".company_links 
  ADD COLUMN created_at timestamptz;

