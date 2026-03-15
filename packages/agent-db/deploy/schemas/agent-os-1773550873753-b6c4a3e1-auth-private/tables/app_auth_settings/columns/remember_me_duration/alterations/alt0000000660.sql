-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000000660
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/remember_me_duration/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings.remember_me_duration IS 'Extended session duration when the user selects remember me during login';

