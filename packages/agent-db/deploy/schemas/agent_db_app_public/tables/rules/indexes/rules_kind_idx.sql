-- Deploy: schemas/agent_db_app_public/tables/rules/indexes/rules_kind_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/kind/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_due_date_idx


CREATE INDEX rules_kind_idx ON agent_db_app_public.rules USING BTREE ( kind );

