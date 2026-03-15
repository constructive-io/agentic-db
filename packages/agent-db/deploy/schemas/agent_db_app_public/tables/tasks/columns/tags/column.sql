-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/dependencies/column


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN tags citext[];

