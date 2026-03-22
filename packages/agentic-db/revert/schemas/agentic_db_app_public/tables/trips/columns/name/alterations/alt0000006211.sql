-- Revert: schemas/agentic_db_app_public/tables/trips/columns/name/alterations/alt0000006211


ALTER TABLE agentic_db_app_public.trips 
  ALTER COLUMN name DROP NOT NULL;


