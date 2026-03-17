-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_name_gin_idx


CREATE INDEX trips_name_gin_idx ON "agentic_db_app_public".trips USING gin ( name gin_trgm_ops );

