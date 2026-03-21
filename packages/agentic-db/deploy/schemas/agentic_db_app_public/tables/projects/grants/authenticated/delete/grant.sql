-- Deploy: schemas/agentic_db_app_public/tables/projects/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_status_idx


GRANT DELETE ON agentic_db_app_public.projects TO authenticated;

