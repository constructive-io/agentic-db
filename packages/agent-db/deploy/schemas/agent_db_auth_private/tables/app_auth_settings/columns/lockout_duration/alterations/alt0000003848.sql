-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000003848
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/lockout_duration/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.lockout_duration IS 'How long the account stays locked after exceeding max failed login attempts';

