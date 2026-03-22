-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_status_idx
-- requires: schemas/agentic_db_app_public/tables/trips/columns/started_at/column


CREATE INDEX trips_started_at_idx ON "agentic_db_app_public".trips USING BTREE ( started_at );

