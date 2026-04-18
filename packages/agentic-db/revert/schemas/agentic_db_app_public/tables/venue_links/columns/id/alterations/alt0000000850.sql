-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/id/alterations/alt0000000850


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN id DROP NOT NULL;


