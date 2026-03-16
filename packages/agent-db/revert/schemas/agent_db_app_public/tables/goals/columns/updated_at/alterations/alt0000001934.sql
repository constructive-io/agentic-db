-- Revert: schemas/agent_db_app_public/tables/goals/columns/updated_at/alterations/alt0000001934


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN updated_at DROP NOT NULL;


