-- Deploy: schemas/agent_db_app_public/tables/files/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


GRANT INSERT ON "agent_db_app_public".files TO authenticated;

