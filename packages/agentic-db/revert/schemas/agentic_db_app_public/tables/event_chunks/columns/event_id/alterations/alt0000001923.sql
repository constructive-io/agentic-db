-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/event_id/alterations/alt0000001923


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN event_id DROP NOT NULL;


