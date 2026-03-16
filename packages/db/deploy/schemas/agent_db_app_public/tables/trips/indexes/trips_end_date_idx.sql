-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_end_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/end_date/column
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_start_date_idx


CREATE INDEX trips_end_date_idx ON "agent_db_app_public".trips USING BTREE ( end_date );

