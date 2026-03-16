-- Revert: schemas/agent_db_app_public/tables/goals/columns/created_at/alterations/alt0000001932


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN created_at DROP NOT NULL;


