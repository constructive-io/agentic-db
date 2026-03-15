-- Deploy: schemas/agent_db_app_public/tables/processes/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".processes TO authenticated;

