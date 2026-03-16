-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_tags_gin_idx


CREATE INDEX repositories_tags_gin_idx ON "agentic_db_app_public".repositories USING GIN ( tags );

