-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/result/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  DROP COLUMN result RESTRICT;


