-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/name/column
-- requires: schemas/agent_db_app_public/tables/repositories/indexes/repositories_name_gin_idx


CREATE INDEX tools_name_gin_idx ON agent_db_app_public.tools USING gin ( name gin_trgm_ops );

