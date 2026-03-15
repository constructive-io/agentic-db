-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/id/alterations/alt0000002260
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

