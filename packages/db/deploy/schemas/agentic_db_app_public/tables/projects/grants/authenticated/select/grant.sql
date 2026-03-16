-- Deploy: schemas/agentic_db_app_public/tables/projects/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


GRANT SELECT ON "agentic_db_app_public".projects TO authenticated;

