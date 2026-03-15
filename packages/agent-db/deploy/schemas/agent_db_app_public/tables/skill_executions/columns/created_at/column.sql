-- Deploy: schemas/agent_db_app_public/tables/skill_executions/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skill_executions/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.skill_executions 
  ADD COLUMN created_at timestamptz;

