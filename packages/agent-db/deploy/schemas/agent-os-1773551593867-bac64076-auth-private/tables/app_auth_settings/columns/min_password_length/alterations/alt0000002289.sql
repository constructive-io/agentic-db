-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000002289
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/min_password_length/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings 
    ALTER COLUMN min_password_length SET DEFAULT 8;

