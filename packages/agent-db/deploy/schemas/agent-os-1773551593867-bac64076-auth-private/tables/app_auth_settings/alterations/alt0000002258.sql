-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/alterations/alt0000002258
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-auth-private".app_auth_settings IS E'Singleton configuration table for authentication settings including session durations, lockout policy, and password requirements';

