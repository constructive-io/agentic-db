-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/id/alterations/alt0000002677


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ALTER COLUMN id DROP NOT NULL;


