-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000001506
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/require_csrf_for_auth/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.require_csrf_for_auth IS E'Whether to enforce CSRF token validation on sign_in and sign_up endpoints';

