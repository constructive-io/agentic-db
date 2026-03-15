-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/constraints/app_auth_settings_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ADD CONSTRAINT app_auth_settings_pkey PRIMARY KEY (id);

