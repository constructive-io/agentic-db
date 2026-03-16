-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/id/alterations/alt0000001952
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ALTER COLUMN id SET NOT NULL;

