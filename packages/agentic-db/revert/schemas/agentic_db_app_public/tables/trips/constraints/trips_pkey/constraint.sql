-- Revert: schemas/agentic_db_app_public/tables/trips/constraints/trips_pkey/constraint


ALTER TABLE agentic_db_app_public.trips 
  DROP CONSTRAINT trips_pkey;


