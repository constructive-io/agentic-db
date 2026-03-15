-- Deploy: schemas/agent_db_app_public/tables/venues/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/status/alterations/alt0000000905


ALTER TABLE agent_db_app_public.venues 
  ADD COLUMN location geography(Point,4326);

