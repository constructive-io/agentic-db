-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.execution_log 
  ADD COLUMN created_at timestamptz;

