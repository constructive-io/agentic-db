-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_google_place_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/google_place_id/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_is_favorite_idx


CREATE INDEX venues_google_place_id_idx ON agent_db_app_public.venues USING BTREE ( google_place_id );

