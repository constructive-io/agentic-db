-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/parent_agent_id/column


ALTER TABLE "agent_db_app_public".agent_spawns 
  DROP COLUMN parent_agent_id RESTRICT;


