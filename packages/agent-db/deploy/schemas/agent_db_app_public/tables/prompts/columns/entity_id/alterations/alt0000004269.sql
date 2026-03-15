-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/entity_id/alterations/alt0000004269
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/prompts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".prompts 
  ALTER COLUMN entity_id SET NOT NULL;

