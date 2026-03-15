-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000000683
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
    ALTER COLUMN enable_cookie_auth SET DEFAULT false;

