-- Revert: schemas/agentic_db_app_public/tables/events/columns/location_geo/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN location_geo RESTRICT;


