-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/content/alterations/alt0000002685


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ALTER COLUMN content DROP NOT NULL;


