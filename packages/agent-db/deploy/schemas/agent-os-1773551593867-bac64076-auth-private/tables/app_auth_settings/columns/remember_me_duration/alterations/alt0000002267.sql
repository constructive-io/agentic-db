-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000002267
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/remember_me_duration/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
  ALTER COLUMN remember_me_duration SET NOT NULL;

