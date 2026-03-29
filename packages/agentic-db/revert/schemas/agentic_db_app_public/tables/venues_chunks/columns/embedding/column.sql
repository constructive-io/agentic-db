-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.venues_chunks 
  DROP COLUMN embedding RESTRICT;


