-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/entity_id/alterations/alt0000006303


ALTER TABLE agentic_db_app_public.trip_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


