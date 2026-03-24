-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/id/alterations/alt0000001741


ALTER TABLE "agentic_db_app_public".trip_places 
  ALTER COLUMN id DROP NOT NULL;


