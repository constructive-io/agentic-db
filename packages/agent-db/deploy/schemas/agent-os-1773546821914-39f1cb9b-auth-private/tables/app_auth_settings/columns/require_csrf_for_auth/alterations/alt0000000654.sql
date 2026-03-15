-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/alterations/alt0000000654
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/require_csrf_for_auth/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings.require_csrf_for_auth IS E'Whether to enforce CSRF token validation on sign_in and sign_up endpoints';

