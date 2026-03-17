-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/due_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/parent_task_id/column


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN due_date timestamptz;

