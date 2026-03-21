-- Revert: schemas/agentic_db_app_public/tables/venues/columns/city/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN city RESTRICT;


