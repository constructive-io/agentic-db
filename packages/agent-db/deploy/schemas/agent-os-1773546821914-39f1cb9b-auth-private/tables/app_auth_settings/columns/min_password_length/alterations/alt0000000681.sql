-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000000681
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/min_password_length/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings.min_password_length IS 'Minimum number of characters required for user passwords';

