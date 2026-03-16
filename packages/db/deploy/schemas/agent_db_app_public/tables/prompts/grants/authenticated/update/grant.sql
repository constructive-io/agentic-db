-- Deploy: schemas/agent_db_app_public/tables/prompts/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".prompts TO authenticated;

