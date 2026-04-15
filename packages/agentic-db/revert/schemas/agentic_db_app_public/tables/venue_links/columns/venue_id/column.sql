-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column


ALTER TABLE agentic_db_app_public.venue_links 
  DROP COLUMN venue_id RESTRICT;


