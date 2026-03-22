-- Revert: schemas/agentic_db_app_public/tables/venues/columns/id/column


ALTER TABLE agentic_db_app_public.venues 
  DROP COLUMN id RESTRICT;


