-- Revert: schemas/agent_db_app_public/tables/agents/columns/created_at/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN created_at RESTRICT;


