-- Deploy: schemas/agent_db_app_public/tables/feedback/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/feedback/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.feedback 
  ADD COLUMN created_at timestamptz;

