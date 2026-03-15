-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_assigned_agent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_project_id_idx
-- requires: schemas/agent_db_app_public/tables/tasks/columns/assigned_agent_id/column


CREATE INDEX tasks_assigned_agent_id_idx ON agent_db_app_public.tasks USING BTREE ( assigned_agent_id );

