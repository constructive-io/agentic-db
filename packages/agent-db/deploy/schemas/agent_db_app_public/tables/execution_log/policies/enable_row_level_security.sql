-- Deploy: schemas/agent_db_app_public/tables/execution_log/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE agent_db_app_public.execution_log 
  ENABLE ROW LEVEL SECURITY;

