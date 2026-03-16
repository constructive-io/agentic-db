-- Deploy: schemas/agentic_db_app_public/tables/workflows/indexes/workflows_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_name_gin_idx


CREATE INDEX workflows_name_gin_idx ON "agentic_db_app_public".workflows USING gin ( name gin_trgm_ops );

