-- Deploy: schemas/agent_db_app_public/tables/feedback/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column


GRANT UPDATE ON "agent_db_app_public".feedback TO authenticated;

