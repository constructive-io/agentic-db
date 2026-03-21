-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/reminder_id/alterations/alt0000002717


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ALTER COLUMN reminder_id DROP NOT NULL;


