-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN created_at timestamptz;

