-- Deploy: schemas/agent_db_app_public/tables/memories/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/embedding/column


GRANT SELECT ON "agent_db_app_public".memories TO authenticated;

