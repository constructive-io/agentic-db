-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/task/alterations/alt0000002097


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN task DROP NOT NULL;


