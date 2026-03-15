-- Deploy: schemas/agent_db_app_public/tables/projects/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.projects 
  ADD COLUMN updated_at timestamptz;

