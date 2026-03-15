-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/completed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/started_at/column


ALTER TABLE agent_db_app_public.agent_spawns 
  ADD COLUMN completed_at timestamptz;

