-- Deploy: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_tags_gin_idx


CREATE INDEX ideas_tags_gin_idx ON "agentic_db_app_public".ideas USING GIN ( tags );

