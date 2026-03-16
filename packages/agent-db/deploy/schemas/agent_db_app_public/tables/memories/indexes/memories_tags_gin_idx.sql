-- Deploy: schemas/agent_db_app_public/tables/memories/indexes/memories_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/rules/indexes/rules_tags_gin_idx


CREATE INDEX memories_tags_gin_idx ON "agent_db_app_public".memories USING GIN ( tags );

