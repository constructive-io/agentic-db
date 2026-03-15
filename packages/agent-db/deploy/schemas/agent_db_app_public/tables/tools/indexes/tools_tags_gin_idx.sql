-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_tags_gin_idx


CREATE INDEX tools_tags_gin_idx ON agent_db_app_public.tools USING GIN ( tags );

