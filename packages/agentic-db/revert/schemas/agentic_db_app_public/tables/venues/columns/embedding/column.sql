-- Revert: schemas/agentic_db_app_public/tables/venues/columns/embedding/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN embedding RESTRICT;


