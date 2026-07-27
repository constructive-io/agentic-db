-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table


ALTER TABLE agentic_db_app_public.tasks 
  ADD COLUMN started_at timestamptz;

