-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/content/alterations/alt0000001028


ALTER TABLE "agentic_db_app_public".venue_chunks 
  ALTER COLUMN content DROP NOT NULL;


