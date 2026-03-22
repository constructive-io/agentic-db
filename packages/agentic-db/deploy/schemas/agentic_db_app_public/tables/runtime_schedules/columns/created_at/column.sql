-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ADD COLUMN created_at timestamptz;

