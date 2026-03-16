-- Revert: schemas/agent_db_app_public/tables/goals/columns/title/alterations/alt0000001936


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN title DROP NOT NULL;


