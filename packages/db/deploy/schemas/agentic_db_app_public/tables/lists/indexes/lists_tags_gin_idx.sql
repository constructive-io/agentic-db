-- Deploy: schemas/agentic_db_app_public/tables/lists/indexes/lists_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_tags_gin_idx


CREATE INDEX lists_tags_gin_idx ON "agentic_db_app_public".lists USING GIN ( tags );

