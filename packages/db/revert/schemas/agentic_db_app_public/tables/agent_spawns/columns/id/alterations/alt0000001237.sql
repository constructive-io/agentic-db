-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/id/alterations/alt0000001237


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN id DROP NOT NULL;


