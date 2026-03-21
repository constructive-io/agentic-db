-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.processes 
  ADD COLUMN created_at timestamptz;

