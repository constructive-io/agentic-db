-- Deploy: schemas/agent_db_app_public/tables/projects/columns/id/alterations/alt0000002129
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/id/column
-- requires: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint



ALTER TABLE "agent_db_app_public".projects 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

