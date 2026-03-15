-- Deploy: schemas/agent_db_app_public/tables/projects/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


GRANT INSERT ON agent_db_app_public.projects TO authenticated;

