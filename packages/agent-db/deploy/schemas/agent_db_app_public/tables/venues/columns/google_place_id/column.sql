-- Deploy: schemas/agent_db_app_public/tables/venues/columns/google_place_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/location/column


ALTER TABLE agent_db_app_public.venues 
  ADD COLUMN google_place_id text;

