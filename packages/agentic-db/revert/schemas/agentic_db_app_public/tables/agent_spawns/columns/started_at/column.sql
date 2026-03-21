-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/started_at/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  DROP COLUMN started_at RESTRICT;


