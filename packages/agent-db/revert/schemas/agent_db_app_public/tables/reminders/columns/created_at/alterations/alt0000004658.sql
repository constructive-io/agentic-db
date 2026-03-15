-- Revert: schemas/agent_db_app_public/tables/reminders/columns/created_at/alterations/alt0000004658




ALTER TABLE "agent_db_app_public".reminders 
    ALTER COLUMN created_at DROP DEFAULT;



