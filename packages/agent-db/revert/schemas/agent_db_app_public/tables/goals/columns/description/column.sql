-- Revert: schemas/agent_db_app_public/tables/goals/columns/description/column


ALTER TABLE "agent_db_app_public".goals 
  DROP COLUMN description RESTRICT;


