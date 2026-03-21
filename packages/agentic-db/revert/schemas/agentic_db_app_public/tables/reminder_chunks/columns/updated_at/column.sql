-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  DROP COLUMN updated_at RESTRICT;


