-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000002278
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".app_auth_settings.allow_anonymous_sessions IS E'Whether to allow anonymous sessions (useful for CSRF protection and shopping carts)';

