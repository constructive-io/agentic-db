-- Deploy: schemas/agent_db_app_public/tables/companies/columns/created_at/alterations/alt0000004089
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".companies 
  ALTER COLUMN created_at SET NOT NULL;

