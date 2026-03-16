-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/entity_id/alterations/alt0000001239


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ALTER COLUMN entity_id DROP NOT NULL;


