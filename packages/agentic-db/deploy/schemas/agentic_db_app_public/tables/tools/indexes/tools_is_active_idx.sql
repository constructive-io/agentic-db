-- Deploy: schemas/agentic_db_app_public/tables/tools/indexes/tools_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/indexes/tools_type_idx
-- requires: schemas/agentic_db_app_public/tables/tools/columns/is_active/column


CREATE INDEX tools_is_active_idx ON "agentic_db_app_public".tools USING BTREE ( is_active );

