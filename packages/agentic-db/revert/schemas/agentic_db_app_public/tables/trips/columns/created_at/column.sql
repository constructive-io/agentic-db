-- Revert: schemas/agentic_db_app_public/tables/trips/columns/created_at/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN created_at RESTRICT;


