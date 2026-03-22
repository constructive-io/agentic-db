-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/created_at/alterations/alt0000001023


ALTER TABLE "agentic_db_app_public".venue_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


