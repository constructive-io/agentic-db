-- Deploy: schemas/agent_db_app_public/tables/execution_log/alterations/alt0000001148
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agent_db_app_public.execution_log 
  DISABLE ROW LEVEL SECURITY;

