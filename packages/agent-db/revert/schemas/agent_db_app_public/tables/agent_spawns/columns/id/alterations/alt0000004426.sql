-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/id/alterations/alt0000004426


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN id DROP NOT NULL;


