-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/priority/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/status/alterations/alt0000001050


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN priority int;

