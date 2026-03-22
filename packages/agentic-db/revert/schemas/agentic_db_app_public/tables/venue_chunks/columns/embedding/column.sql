-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.venue_chunks 
  DROP COLUMN embedding RESTRICT;


