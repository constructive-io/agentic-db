-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/constraints/trips_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.trips_chunks 
  DROP CONSTRAINT trips_chunks_pkey;


