-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/alterations/alt0000003570


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN venue_id DROP NOT NULL;


