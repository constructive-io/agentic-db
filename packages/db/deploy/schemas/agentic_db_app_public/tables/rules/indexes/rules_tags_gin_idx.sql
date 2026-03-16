-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_tags_gin_idx


CREATE INDEX rules_tags_gin_idx ON "agentic_db_app_public".rules USING GIN ( tags );

