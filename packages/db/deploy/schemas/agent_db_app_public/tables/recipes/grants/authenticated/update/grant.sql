-- Deploy: schemas/agent_db_app_public/tables/recipes/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".recipes TO authenticated;

