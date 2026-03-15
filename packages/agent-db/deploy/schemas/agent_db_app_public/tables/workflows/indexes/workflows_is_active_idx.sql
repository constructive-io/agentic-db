-- Deploy: schemas/agent_db_app_public/tables/workflows/indexes/workflows_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_is_active_idx
-- requires: schemas/agent_db_app_public/tables/workflows/columns/is_active/column


CREATE INDEX workflows_is_active_idx ON "agent_db_app_public".workflows USING BTREE ( is_active );

