-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_status_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/status/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_occurred_at_idx


CREATE INDEX tasks_status_idx ON agent_db_app_public.tasks USING BTREE ( status );

