-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/trip_id/alterations/alt0000001700


ALTER TABLE "agentic_db_app_public".trip_places 
  ALTER COLUMN trip_id DROP NOT NULL;


