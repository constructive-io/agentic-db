-- Revert: schemas/agentic_db_app_public/tables/events/columns/location/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN location RESTRICT;


