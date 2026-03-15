-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_status_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/status/column
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_end_date_idx


CREATE INDEX trips_status_idx ON "agent_db_app_public".trips USING BTREE ( status );

