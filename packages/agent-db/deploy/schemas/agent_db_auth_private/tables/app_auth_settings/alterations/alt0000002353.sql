-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/alterations/alt0000002353
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


COMMENT ON TABLE "agent_db_auth_private".app_auth_settings IS E'Singleton configuration table for authentication settings including session durations, lockout policy, and password requirements';

