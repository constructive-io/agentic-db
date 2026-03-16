-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/status/column


ALTER TABLE "agent_db_app_public".agent_spawns 
  DROP COLUMN status RESTRICT;


