-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/distance_km/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DROP COLUMN distance_km RESTRICT;


