-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000002293
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".app_auth_settings.enable_cookie_auth IS E'Whether to enable HTTP cookie-based authentication (requires CSRF protection)';

