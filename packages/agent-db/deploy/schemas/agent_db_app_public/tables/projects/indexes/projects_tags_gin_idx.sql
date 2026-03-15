-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_tags_gin_idx


CREATE INDEX projects_tags_gin_idx ON agent_db_app_public.projects USING GIN ( tags );

