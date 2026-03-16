-- Deploy: schemas/agent_db_app_public/tables/habits/indexes/habits_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/ideas/indexes/ideas_tags_gin_idx


CREATE INDEX habits_tags_gin_idx ON "agent_db_app_public".habits USING GIN ( tags );

