-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/id/column


ALTER TABLE agentic_db_app_public.venue_links 
  DROP COLUMN id RESTRICT;


