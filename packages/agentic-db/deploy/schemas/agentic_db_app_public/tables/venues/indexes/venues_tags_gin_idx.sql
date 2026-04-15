-- Deploy: schemas/agentic_db_app_public/tables/venues/indexes/venues_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/tags/column


CREATE INDEX venues_tags_gin_idx ON "agentic_db_app_public".venues USING GIN ( tags );

