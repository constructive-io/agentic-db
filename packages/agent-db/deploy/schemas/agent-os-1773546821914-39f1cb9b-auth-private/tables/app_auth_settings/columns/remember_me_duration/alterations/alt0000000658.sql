-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/remember_me_duration/alterations/alt0000000658
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/columns/remember_me_duration/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  ALTER COLUMN remember_me_duration SET NOT NULL;

