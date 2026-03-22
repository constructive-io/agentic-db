-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/column


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  DROP COLUMN hiking_trail_id RESTRICT;


