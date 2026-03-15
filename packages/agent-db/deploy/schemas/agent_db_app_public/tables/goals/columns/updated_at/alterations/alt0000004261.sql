-- Deploy: schemas/agent_db_app_public/tables/goals/columns/updated_at/alterations/alt0000004261
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/goals/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN updated_at SET NOT NULL;

