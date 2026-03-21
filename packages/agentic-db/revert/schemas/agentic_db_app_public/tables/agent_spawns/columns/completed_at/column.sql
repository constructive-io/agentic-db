-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  DROP COLUMN completed_at RESTRICT;


