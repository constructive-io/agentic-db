-- Deploy: schemas/agentic_db_app_public/tables/workflows/indexes/workflows_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/indexes/tools_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/is_active/column


CREATE INDEX workflows_is_active_idx ON "agentic_db_app_public".workflows USING BTREE ( is_active );

