-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_due_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/due_date/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_assigned_agent_id_idx


CREATE INDEX tasks_due_date_idx ON agent_db_app_public.tasks USING BTREE ( due_date );

