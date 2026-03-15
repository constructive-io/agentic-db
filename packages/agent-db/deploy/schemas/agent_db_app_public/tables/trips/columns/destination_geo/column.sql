-- Deploy: schemas/agent_db_app_public/tables/trips/columns/destination_geo/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/notes/column


ALTER TABLE "agent_db_app_public".trips 
  ADD COLUMN destination_geo geography(Point,4326);

