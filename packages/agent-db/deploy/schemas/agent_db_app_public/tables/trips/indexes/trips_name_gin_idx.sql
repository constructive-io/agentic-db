-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/name/column
-- requires: schemas/agent_db_app_public/tables/templates/indexes/templates_name_gin_idx


CREATE INDEX trips_name_gin_idx ON agent_db_app_public.trips USING gin ( name gin_trgm_ops );

