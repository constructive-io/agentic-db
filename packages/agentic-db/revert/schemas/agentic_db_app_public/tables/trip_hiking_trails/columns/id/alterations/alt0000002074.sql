-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/id/alterations/alt0000002074


ALTER TABLE "agentic_db_app_public".trip_hiking_trails 
  ALTER COLUMN id DROP NOT NULL;


