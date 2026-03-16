-- Deploy: schemas/agent_db_app_public/tables/memories/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


GRANT DELETE ON "agent_db_app_public".memories TO authenticated;

