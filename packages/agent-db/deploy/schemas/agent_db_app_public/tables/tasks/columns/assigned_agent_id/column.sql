-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/assigned_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/task_type/alterations/alt0000001051


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN assigned_agent_id uuid;

