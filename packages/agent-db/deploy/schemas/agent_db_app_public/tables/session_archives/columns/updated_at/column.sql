-- Deploy: schemas/agent_db_app_public/tables/session_archives/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.session_archives 
  ADD COLUMN updated_at timestamptz;

