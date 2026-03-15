-- Deploy: schemas/agent_db_app_public/tables/sessions/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".sessions TO authenticated;

