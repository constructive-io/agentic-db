-- Revert: schemas/agent_db_app_public/tables/goals/columns/target_date/column


ALTER TABLE "agent_db_app_public".goals 
  DROP COLUMN target_date RESTRICT;


