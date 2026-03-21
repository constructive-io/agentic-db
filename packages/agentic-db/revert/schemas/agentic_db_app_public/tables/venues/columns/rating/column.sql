-- Revert: schemas/agentic_db_app_public/tables/venues/columns/rating/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN rating RESTRICT;


