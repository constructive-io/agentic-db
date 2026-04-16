-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/url/alterations/alt0000015357


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN url DROP NOT NULL;


