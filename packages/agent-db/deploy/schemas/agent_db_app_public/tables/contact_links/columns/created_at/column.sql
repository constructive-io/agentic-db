-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.contact_links 
  ADD COLUMN created_at timestamptz;

