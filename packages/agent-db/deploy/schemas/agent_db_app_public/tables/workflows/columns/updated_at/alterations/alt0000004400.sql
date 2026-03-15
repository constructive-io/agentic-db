-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/updated_at/alterations/alt0000004400
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/workflows/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".workflows 
  ALTER COLUMN updated_at SET NOT NULL;

