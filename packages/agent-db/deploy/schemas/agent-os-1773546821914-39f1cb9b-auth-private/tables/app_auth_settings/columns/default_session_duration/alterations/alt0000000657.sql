-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000000657
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/default_session_duration/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings.default_session_duration IS E'How long sessions last for standard (non-remember-me) logins';

