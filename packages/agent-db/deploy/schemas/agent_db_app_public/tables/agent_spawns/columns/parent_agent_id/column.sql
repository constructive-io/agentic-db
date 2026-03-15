-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/columns/parent_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/agent_spawns/columns/updated_at/alterations/alt0000004480


ALTER TABLE "agent_db_app_public".agent_spawns 
  ADD COLUMN parent_agent_id uuid;

