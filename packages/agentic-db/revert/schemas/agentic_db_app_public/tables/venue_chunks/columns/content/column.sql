-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.venue_chunks 
  DROP COLUMN content RESTRICT;


