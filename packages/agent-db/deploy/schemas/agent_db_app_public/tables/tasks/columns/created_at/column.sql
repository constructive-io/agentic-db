-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.tasks 
  ADD COLUMN created_at timestamptz;

