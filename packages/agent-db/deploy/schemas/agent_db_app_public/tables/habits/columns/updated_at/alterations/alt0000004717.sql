-- Deploy: schemas/agent_db_app_public/tables/habits/columns/updated_at/alterations/alt0000004717
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN updated_at SET NOT NULL;

