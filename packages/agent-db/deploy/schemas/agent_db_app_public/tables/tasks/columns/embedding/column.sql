-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/tags/column


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN embedding vector(768);

