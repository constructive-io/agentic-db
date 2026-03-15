-- Revert: schemas/agent_db_app_public/tables/goals/columns/id/alterations/alt0000004256


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN id DROP NOT NULL;


