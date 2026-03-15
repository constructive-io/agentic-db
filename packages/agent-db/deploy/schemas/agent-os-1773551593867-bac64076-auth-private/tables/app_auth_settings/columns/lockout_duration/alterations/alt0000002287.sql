-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000002287
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/columns/lockout_duration/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".app_auth_settings.lockout_duration IS 'How long the account stays locked after exceeding max failed login attempts';

