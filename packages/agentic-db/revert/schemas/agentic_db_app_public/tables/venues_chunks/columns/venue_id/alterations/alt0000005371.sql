-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/venue_id/alterations/alt0000005371


ALTER TABLE agentic_db_app_public.venues_chunks 
  ALTER COLUMN venue_id DROP NOT NULL;


