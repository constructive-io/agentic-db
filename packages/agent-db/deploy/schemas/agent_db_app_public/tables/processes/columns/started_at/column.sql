-- Deploy: schemas/agent_db_app_public/tables/processes/columns/started_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/command/column


ALTER TABLE agent_db_app_public.processes 
  ADD COLUMN started_at timestamptz;

