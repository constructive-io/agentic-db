-- Revert: schemas/agentic_db_app_public/tables/memories/columns/location_geo/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN location_geo RESTRICT;


