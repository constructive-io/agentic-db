-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/id/alterations/alt0000004279
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/id/column


ALTER TABLE "agent_db_app_public".skill_executions 
  ALTER COLUMN id SET NOT NULL;

