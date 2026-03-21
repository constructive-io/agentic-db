-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/chunk_index/alterations/alt0000002684


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


