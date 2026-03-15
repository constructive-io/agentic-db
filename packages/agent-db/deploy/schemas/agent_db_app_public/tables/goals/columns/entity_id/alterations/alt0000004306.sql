-- Deploy: schemas/agent_db_app_public/tables/goals/columns/entity_id/alterations/alt0000004306
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN entity_id SET NOT NULL;

