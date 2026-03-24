-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000002004
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/min_password_length/column


COMMENT ON COLUMN agentic_db_auth_private.app_auth_settings.min_password_length IS 'Minimum number of characters required for user passwords';

