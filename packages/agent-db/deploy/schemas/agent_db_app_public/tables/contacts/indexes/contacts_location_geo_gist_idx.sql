-- Deploy: schemas/agent_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/location_geo/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_location_gist_idx


CREATE INDEX contacts_location_geo_gist_idx ON "agent_db_app_public".contacts USING GIST ( location_geo );

