-- Deploy: schemas/agentic_db_app_public/tables/tools/indexes/tools_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_tags_gin_idx


CREATE INDEX tools_tags_gin_idx ON "agentic_db_app_public".tools USING GIN ( tags );

