-- Deploy: schemas/agent_db_app_public/tables/prompts/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/prompts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.prompts 
  ADD COLUMN created_at timestamptz;

