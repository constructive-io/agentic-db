-- Revert: schemas/agentic_db_app_public/tables/venues/columns/name/alterations/alt0000002288


ALTER TABLE agentic_db_app_public.venues 
  ALTER COLUMN name DROP NOT NULL;


