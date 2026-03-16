-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_tags_gin_idx


CREATE INDEX skills_tags_gin_idx ON "agent_db_app_public".skills USING GIN ( tags );

