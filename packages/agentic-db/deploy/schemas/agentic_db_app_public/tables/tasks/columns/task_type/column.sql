-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/task_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/project_id/column


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN task_type text;

