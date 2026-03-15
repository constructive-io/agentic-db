-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000000672
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/column


COMMENT ON COLUMN agent_db_auth_private.app_auth_settings.allow_multiple_sessions IS 'Whether users can have multiple active sessions simultaneously';

