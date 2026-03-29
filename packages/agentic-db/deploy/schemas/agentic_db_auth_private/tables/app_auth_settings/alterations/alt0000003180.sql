-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/alterations/alt0000003180
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table


COMMENT ON TABLE agentic_db_auth_private.app_auth_settings IS E'Singleton configuration table for authentication settings including session durations, lockout policy, and password requirements';

