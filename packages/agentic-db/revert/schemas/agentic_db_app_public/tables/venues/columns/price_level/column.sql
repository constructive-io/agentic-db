-- Revert: schemas/agentic_db_app_public/tables/venues/columns/price_level/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN price_level RESTRICT;


