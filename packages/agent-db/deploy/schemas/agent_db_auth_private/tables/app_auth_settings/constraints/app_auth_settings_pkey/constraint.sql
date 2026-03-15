-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/constraints/app_auth_settings_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


ALTER TABLE agent_db_auth_private.app_auth_settings 
  ADD CONSTRAINT app_auth_settings_pkey PRIMARY KEY (id);

