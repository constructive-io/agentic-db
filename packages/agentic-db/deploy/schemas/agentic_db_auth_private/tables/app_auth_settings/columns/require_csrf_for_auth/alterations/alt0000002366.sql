-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000002366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.require_csrf_for_auth IS E'Whether to enforce CSRF token validation on sign_in and sign_up endpoints';

