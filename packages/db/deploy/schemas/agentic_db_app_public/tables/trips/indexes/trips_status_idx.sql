-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_end_date_idx


CREATE INDEX trips_status_idx ON "agentic_db_app_public".trips USING BTREE ( status );

