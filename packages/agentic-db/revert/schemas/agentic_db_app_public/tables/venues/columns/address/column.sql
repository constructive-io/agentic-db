-- Revert: schemas/agentic_db_app_public/tables/venues/columns/address/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN address RESTRICT;


