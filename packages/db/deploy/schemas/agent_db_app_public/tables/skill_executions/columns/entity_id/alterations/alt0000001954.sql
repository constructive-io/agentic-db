-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/entity_id/alterations/alt0000001954
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/entity_id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ALTER COLUMN entity_id SET NOT NULL;

