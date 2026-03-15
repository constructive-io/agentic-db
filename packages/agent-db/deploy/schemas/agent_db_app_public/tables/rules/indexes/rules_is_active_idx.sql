-- Deploy: schemas/agent_db_app_public/tables/rules/indexes/rules_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/indexes/rules_kind_idx
-- requires: schemas/agent_db_app_public/tables/rules/columns/is_active/column


CREATE INDEX rules_is_active_idx ON "agent_db_app_public".rules USING BTREE ( is_active );

