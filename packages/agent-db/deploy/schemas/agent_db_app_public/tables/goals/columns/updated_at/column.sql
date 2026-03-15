-- Deploy: schemas/agent_db_app_public/tables/goals/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.goals 
  ADD COLUMN updated_at timestamptz;

