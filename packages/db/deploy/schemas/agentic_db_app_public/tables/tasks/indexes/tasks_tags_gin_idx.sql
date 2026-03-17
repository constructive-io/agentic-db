-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx


CREATE INDEX tasks_tags_gin_idx ON "agentic_db_app_public".tasks USING GIN ( tags );

