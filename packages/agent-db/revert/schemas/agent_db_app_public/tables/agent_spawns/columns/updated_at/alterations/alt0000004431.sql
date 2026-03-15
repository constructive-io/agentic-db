-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/updated_at/alterations/alt0000004431


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN updated_at DROP NOT NULL;


