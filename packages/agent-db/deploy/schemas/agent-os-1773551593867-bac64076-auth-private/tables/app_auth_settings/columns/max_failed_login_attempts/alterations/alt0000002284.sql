-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/alterations/alt0000002284
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/max_failed_login_attempts/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".app_auth_settings.max_failed_login_attempts IS 'Number of consecutive failed login attempts before the account is locked';

