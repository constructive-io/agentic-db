-- Revert: schemas/agent_db_app_public/tables/reminders/columns/entity_id/alterations/alt0000002304


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN entity_id DROP NOT NULL;


