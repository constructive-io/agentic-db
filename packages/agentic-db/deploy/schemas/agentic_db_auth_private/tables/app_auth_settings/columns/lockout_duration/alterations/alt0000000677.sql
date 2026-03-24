-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000000677
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/column


COMMENT ON COLUMN "agentic_db_auth_private".app_auth_settings.lockout_duration IS 'How long the account stays locked after exceeding max failed login attempts';

