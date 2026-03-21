-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/agent_id/alterations/alt0000002354


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN agent_id DROP NOT NULL;


