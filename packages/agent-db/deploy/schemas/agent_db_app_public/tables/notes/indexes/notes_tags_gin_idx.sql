-- Deploy: schemas/agent_db_app_public/tables/notes/indexes/notes_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_tags_gin_idx


CREATE INDEX notes_tags_gin_idx ON agent_db_app_public.notes USING GIN ( tags );

