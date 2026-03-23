-- Revert: schemas/agentic_db_app_public/tables/places/columns/category/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN category RESTRICT;


