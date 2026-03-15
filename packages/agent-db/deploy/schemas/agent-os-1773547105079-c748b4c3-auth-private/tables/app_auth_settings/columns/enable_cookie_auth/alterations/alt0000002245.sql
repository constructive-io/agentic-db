-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000002245
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/columns/enable_cookie_auth/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".app_auth_settings.enable_cookie_auth IS E'Whether to enable HTTP cookie-based authentication (requires CSRF protection)';

