-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/updated_at/alterations/alt0000002238


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN updated_at DROP NOT NULL;


