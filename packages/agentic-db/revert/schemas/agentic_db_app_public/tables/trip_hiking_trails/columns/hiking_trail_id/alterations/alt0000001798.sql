-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/alterations/alt0000001798


ALTER TABLE "agentic_db_app_public".trip_hiking_trails 
  ALTER COLUMN hiking_trail_id DROP NOT NULL;


