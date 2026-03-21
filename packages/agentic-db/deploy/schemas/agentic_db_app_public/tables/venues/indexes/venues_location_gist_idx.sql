-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_location_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/location/column
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_location_geo_gist_idx


CREATE INDEX venues_location_gist_idx ON agentic_db_app_public.venues USING GIST ( location );

