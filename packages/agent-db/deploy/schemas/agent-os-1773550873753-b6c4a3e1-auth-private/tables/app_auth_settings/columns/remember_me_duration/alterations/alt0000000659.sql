-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000000659
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/remember_me_duration/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
    ALTER COLUMN remember_me_duration SET DEFAULT '30 days'::interval;

