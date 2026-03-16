-- Revert: schemas/agent_db_app_public/tables/reminders/columns/id/alterations/alt0000002302


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN id DROP NOT NULL;


