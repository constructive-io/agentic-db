-- Deploy: schemas/agent_db_app_public/tables/recipes/indexes/recipes_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/name/column
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_name_gin_idx


CREATE INDEX recipes_name_gin_idx ON agent_db_app_public.recipes USING gin ( name gin_trgm_ops );

