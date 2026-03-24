-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/trip_id/column


ALTER TABLE "agentic_db_app_public".trip_places 
  DROP COLUMN trip_id RESTRICT;


