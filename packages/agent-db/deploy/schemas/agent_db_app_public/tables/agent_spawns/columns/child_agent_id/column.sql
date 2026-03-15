-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/child_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000001263


ALTER TABLE agent_db_app_public.agent_spawns 
  ADD COLUMN child_agent_id uuid;

