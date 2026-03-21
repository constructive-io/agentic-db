-- Revert: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/chunk_index/alterations/alt0000002569


ALTER TABLE "agentic_db_app_public".calendar_event_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


