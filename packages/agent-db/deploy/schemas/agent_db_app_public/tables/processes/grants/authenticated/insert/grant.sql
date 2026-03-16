-- Deploy: schemas/agent_db_app_public/tables/processes/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


GRANT INSERT ON "agent_db_app_public".processes TO authenticated;

