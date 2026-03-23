-- Revert: schemas/agentic_db_app_public/tables/trip_places/columns/id/column


ALTER TABLE "agentic_db_app_public".trip_places 
  DROP COLUMN id RESTRICT;


