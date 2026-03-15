-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_is_favorite_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_status_idx
-- requires: schemas/agent_db_app_public/tables/venues/columns/is_favorite/column


CREATE INDEX venues_is_favorite_idx ON agent_db_app_public.venues USING BTREE ( is_favorite );

