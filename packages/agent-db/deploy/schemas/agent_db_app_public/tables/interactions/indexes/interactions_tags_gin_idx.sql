-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_tags_gin_idx


CREATE INDEX interactions_tags_gin_idx ON agent_db_app_public.interactions USING GIN ( tags );

