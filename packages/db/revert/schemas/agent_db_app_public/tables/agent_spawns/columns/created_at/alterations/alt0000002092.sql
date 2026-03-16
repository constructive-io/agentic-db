-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/created_at/alterations/alt0000002092


ALTER TABLE "agent_db_app_public".agent_spawns 
  ALTER COLUMN created_at DROP NOT NULL;


