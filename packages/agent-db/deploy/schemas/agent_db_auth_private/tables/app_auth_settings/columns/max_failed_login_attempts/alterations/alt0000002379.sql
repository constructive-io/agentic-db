-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000002379
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/max_failed_login_attempts/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.max_failed_login_attempts IS 'Number of consecutive failed login attempts before the account is locked';

