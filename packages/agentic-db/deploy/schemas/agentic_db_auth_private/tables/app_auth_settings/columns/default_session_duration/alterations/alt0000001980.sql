-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/alterations/alt0000001980
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/default_session_duration/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.default_session_duration IS E'How long sessions last for standard (non-remember-me) logins';

