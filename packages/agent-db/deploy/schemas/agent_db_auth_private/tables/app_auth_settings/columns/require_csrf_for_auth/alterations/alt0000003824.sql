-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000003824
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.require_csrf_for_auth IS E'Whether to enforce CSRF token validation on sign_in and sign_up endpoints';

