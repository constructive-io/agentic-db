-- Deploy: schemas/agent_db_app_public/tables/skill_executions/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/prompts/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".skill_executions TO authenticated;

