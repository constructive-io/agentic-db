-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000002241


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN task DROP NOT NULL;


