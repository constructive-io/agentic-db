-- Revert: schemas/agent_db_app_public/tables/agents/columns/last_active_at/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN last_active_at RESTRICT;


