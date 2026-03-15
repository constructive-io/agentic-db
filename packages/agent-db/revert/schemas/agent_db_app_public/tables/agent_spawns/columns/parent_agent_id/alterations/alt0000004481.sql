-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000004481


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN parent_agent_id DROP NOT NULL;


