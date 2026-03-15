-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/created_at/alterations/alt0000001447
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/user_settings/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.user_settings 
  ALTER COLUMN created_at SET NOT NULL;

