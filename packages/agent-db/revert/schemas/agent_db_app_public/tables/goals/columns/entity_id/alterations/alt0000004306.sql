-- Revert: schemas/agent_db_app_public/tables/goals/columns/entity_id/alterations/alt0000004306


ALTER TABLE "agent_db_app_public".goals 
  ALTER COLUMN entity_id DROP NOT NULL;


