-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/approval_status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/requires_approval/alterations/alt0000001230


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN approval_status text;

