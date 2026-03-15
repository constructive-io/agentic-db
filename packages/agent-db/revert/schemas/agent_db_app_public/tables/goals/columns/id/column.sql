-- Revert: schemas/agent_db_app_public/tables/goals/columns/id/column


ALTER TABLE "agent_db_app_public".goals 
  DROP COLUMN id RESTRICT;


