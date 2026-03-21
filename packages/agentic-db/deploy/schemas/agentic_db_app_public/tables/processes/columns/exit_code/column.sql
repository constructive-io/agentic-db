-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/exit_code/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/status/alterations/alt0000004162


ALTER TABLE agentic_db_app_public.processes 
  ADD COLUMN exit_code int;

