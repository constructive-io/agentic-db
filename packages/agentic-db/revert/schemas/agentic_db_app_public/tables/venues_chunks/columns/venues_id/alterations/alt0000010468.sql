-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/venues_id/alterations/alt0000010468


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN venues_id DROP NOT NULL;


