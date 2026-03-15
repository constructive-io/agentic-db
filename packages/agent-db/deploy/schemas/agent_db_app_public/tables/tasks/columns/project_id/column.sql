-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/priority/column


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN project_id uuid;

