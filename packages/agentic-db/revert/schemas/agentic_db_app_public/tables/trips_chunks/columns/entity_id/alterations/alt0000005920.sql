-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/entity_id/alterations/alt0000005920


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


