-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/trip_id/column


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  DROP COLUMN trip_id RESTRICT;


