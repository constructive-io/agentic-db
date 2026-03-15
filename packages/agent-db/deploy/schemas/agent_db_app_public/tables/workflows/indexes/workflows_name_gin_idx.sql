-- Deploy: schemas/agent_db_app_public/tables/workflows/indexes/workflows_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/name/column
-- requires: schemas/agent_db_app_public/tables/integrations/indexes/integrations_name_gin_idx


CREATE INDEX workflows_name_gin_idx ON agent_db_app_public.workflows USING gin ( name gin_trgm_ops );

