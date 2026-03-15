-- Deploy: schemas/agent_db_app_public/tables/memories/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column


GRANT UPDATE ON agent_db_app_public.memories TO authenticated;

