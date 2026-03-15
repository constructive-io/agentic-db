-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000003839
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_anonymous_sessions/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.allow_anonymous_sessions IS E'Whether to allow anonymous sessions (useful for CSRF protection and shopping carts)';

