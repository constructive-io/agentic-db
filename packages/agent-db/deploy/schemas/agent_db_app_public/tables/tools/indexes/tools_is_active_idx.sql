-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_type_idx
-- requires: schemas/agent_db_app_public/tables/tools/columns/is_active/column


CREATE INDEX tools_is_active_idx ON agent_db_app_public.tools USING BTREE ( is_active );

