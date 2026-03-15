-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_priority_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/priority/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_status_idx


CREATE INDEX tasks_priority_idx ON agent_db_app_public.tasks USING BTREE ( priority );

