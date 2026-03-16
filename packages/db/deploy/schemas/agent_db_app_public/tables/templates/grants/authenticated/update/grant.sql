-- Deploy: schemas/agent_db_app_public/tables/templates/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".templates TO authenticated;

