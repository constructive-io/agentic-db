-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/exit_code/column


ALTER TABLE agentic_db_app_public.processes 
  ADD COLUMN logs_path text;

