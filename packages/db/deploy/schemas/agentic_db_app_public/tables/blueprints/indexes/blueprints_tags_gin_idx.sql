-- Deploy: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_tags_gin_idx


CREATE INDEX blueprints_tags_gin_idx ON "agentic_db_app_public".blueprints USING GIN ( tags );

