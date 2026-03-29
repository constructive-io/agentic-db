-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/updated_at/alterations/alt0000010474


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


