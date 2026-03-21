-- Revert: schemas/agentic_db_app_public/tables/trips/columns/notes/column


ALTER TABLE agentic_db_app_public.trips 
  DROP COLUMN notes RESTRICT;


