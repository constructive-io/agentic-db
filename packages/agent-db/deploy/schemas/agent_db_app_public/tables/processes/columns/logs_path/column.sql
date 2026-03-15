-- Deploy: schemas/agent_db_app_public/tables/processes/columns/logs_path/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/exit_code/column


ALTER TABLE agent_db_app_public.processes 
  ADD COLUMN logs_path text;

