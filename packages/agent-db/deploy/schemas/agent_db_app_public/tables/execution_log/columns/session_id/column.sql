-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000001155


ALTER TABLE agent_db_app_public.execution_log 
  ADD COLUMN session_id uuid;

