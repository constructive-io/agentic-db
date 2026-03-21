-- Deploy: schemas/agentic_db_app_public/tables/projects/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx


GRANT UPDATE ON agentic_db_app_public.projects TO authenticated;

