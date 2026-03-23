-- Revert: schemas/agentic_db_app_public/tables/places/columns/city/column


ALTER TABLE agentic_db_app_public.places 
  DROP COLUMN city RESTRICT;


