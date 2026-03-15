-- Deploy: schemas/agent_db_app_public/tables/templates/indexes/templates_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/name/column
-- requires: schemas/agent_db_app_public/tables/recipes/indexes/recipes_name_gin_idx


CREATE INDEX templates_name_gin_idx ON agent_db_app_public.templates USING gin ( name gin_trgm_ops );

