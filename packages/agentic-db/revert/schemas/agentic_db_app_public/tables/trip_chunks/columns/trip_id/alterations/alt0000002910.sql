-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/trip_id/alterations/alt0000002910


ALTER TABLE agentic_db_app_public.trip_chunks 
  ALTER COLUMN trip_id DROP NOT NULL;


