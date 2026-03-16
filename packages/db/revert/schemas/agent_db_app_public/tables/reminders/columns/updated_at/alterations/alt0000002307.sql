-- Revert: schemas/agent_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000002307


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN updated_at DROP NOT NULL;


