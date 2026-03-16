-- Revert: schemas/agent_db_app_public/tables/agents/columns/focus/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN focus RESTRICT;


