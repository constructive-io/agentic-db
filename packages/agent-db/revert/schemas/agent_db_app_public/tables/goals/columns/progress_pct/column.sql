-- Revert: schemas/agent_db_app_public/tables/goals/columns/progress_pct/column


ALTER TABLE "agent_db_app_public".goals 
  DROP COLUMN progress_pct RESTRICT;


