-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/alterations/alt0000005357
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/enable_cookie_auth/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.enable_cookie_auth IS E'Whether to enable HTTP cookie-based authentication (requires CSRF protection)';

