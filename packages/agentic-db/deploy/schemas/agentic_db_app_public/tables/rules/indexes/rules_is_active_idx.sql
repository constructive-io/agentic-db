-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/rules/indexes/rules_trigger_type_idx


CREATE INDEX rules_is_active_idx ON "agentic_db_app_public".rules USING BTREE ( is_active );

