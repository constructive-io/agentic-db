-- Deploy: schemas/agent_db_app_public/tables/tags/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding/column


GRANT INSERT ON agent_db_app_public.tags TO authenticated;

