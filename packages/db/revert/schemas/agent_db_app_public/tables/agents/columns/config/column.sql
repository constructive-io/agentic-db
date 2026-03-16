-- Revert: schemas/agent_db_app_public/tables/agents/columns/config/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN config RESTRICT;


