-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".user_settings 
  ADD COLUMN created_at timestamptz;

