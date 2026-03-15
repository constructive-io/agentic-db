-- Deploy: schemas/agent_db_app_public/tables/trips/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/destination_geo/column


ALTER TABLE "agent_db_app_public".trips 
  ADD COLUMN tags citext[];

