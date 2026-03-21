-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_kind_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/kind/column
-- requires: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_task_type_idx


CREATE INDEX rules_kind_idx ON "agentic_db_app_public".rules USING BTREE ( kind );

