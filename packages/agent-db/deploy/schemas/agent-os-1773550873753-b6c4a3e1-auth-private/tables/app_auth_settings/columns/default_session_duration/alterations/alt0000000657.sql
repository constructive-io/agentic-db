-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000000657
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/default_session_duration/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings.default_session_duration IS E'How long sessions last for standard (non-remember-me) logins';

