-- Revert: schemas/agentic_db_app_public/tables/venues/columns/is_favorite/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN is_favorite RESTRICT;


