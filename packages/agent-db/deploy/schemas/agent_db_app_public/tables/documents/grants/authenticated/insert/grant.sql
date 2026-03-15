-- Deploy: schemas/agent_db_app_public/tables/documents/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column


GRANT INSERT ON "agent_db_app_public".documents TO authenticated;

