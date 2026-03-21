-- Deploy: schemas/agentic_db_app_public/tables/execution_log/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/execution_log/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.execution_log 
  ADD COLUMN created_at timestamptz;

