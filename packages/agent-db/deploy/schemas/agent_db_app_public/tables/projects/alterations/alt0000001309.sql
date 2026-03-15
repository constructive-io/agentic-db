-- Deploy: schemas/agent_db_app_public/tables/projects/alterations/alt0000001309
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE agent_db_app_public.projects 
  DISABLE ROW LEVEL SECURITY;

