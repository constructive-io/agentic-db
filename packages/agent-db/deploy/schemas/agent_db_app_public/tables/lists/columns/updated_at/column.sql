-- Deploy: schemas/agent_db_app_public/tables/lists/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.lists 
  ADD COLUMN updated_at timestamptz;

