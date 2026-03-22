-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/trip_id/alterations/alt0000006407


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  ALTER COLUMN trip_id DROP NOT NULL;


