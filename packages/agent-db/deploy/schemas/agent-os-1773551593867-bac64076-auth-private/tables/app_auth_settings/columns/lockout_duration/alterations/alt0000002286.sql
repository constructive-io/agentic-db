-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000002286
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/lockout_duration/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN lockout_duration SET DEFAULT '15 minutes'::interval;

