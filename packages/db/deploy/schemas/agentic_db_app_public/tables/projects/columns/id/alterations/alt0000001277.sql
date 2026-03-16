-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/id/alterations/alt0000001277
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint



ALTER TABLE "agentic_db_app_public".projects 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

