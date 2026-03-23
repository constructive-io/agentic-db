-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/content/alterations/alt0000002690


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN content DROP NOT NULL;


