-- Deploy: schemas/agent_db_app_public/tables/images/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.images 
  ADD COLUMN created_at timestamptz;

