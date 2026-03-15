-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000003851
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/columns/min_password_length/column


COMMENT ON COLUMN "agent_db_auth_private".app_auth_settings.min_password_length IS 'Minimum number of characters required for user passwords';

