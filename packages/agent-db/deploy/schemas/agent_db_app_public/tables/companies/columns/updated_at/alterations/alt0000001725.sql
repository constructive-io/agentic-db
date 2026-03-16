-- Deploy: schemas/agent_db_app_public/tables/companies/columns/updated_at/alterations/alt0000001725
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".companies 
  ALTER COLUMN updated_at SET NOT NULL;

