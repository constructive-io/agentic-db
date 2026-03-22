-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/distance_km/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/difficulty/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ADD COLUMN distance_km numeric;

