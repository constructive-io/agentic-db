-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN updated_at timestamptz;

