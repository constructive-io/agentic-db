-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000004667
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/user_settings/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".user_settings 
  ALTER COLUMN updated_at SET NOT NULL;

