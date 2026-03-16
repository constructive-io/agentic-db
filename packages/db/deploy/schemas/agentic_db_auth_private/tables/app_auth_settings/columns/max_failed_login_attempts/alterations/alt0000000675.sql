-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000000675
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column


COMMENT ON COLUMN "agentic_db_auth_private".app_auth_settings.max_failed_login_attempts IS 'Number of consecutive failed login attempts before the account is locked';

