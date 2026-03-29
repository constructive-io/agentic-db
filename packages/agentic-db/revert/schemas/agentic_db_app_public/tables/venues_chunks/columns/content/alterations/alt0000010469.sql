-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/content/alterations/alt0000010469


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN content DROP NOT NULL;


