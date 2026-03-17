-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/due_date/column


ALTER TABLE "agentic_db_app_public".tasks 
  ADD COLUMN completed_at timestamptz;

