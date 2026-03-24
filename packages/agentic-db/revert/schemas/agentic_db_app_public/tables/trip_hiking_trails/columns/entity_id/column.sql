-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/entity_id/column


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  DROP COLUMN entity_id RESTRICT;


