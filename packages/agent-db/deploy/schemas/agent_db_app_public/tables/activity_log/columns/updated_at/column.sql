-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.activity_log 
  ADD COLUMN updated_at timestamptz;

