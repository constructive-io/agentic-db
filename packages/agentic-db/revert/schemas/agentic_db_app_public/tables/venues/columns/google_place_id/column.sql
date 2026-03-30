-- Revert: schemas/agentic_db_app_public/tables/venues/columns/google_place_id/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN google_place_id RESTRICT;


