-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE INDEX habits_tags_gin_idx ON agentic_db_app_public.habits USING GIN ( tags );

