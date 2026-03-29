-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/venue_id/column


ALTER TABLE agentic_db_app_public.venues_chunks 
  DROP COLUMN venue_id RESTRICT;


