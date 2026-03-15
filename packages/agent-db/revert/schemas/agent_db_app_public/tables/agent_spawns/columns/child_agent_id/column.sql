-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/child_agent_id/column


ALTER TABLE "agent_db_app_public".agent_spawns 
  DROP COLUMN child_agent_id RESTRICT;


