-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.runtime_metrics 
  ADD COLUMN created_at timestamptz;

