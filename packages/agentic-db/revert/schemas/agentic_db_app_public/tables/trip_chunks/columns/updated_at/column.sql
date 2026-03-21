-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.trip_chunks 
  DROP COLUMN updated_at RESTRICT;


