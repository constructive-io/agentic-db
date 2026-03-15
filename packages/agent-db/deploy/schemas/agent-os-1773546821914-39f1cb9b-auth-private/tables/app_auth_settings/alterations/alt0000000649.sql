-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/alterations/alt0000000649
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/table


COMMENT ON TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings IS E'Singleton configuration table for authentication settings including session durations, lockout policy, and password requirements';

