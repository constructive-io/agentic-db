-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/alterations/alt0000004889
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/allow_multiple_sessions/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.allow_multiple_sessions IS 'Whether users can have multiple active sessions simultaneously';

