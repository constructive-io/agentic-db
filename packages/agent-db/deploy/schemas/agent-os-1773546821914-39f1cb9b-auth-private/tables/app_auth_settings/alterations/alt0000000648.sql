-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/alterations/alt0000000648
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings 
  DISABLE ROW LEVEL SECURITY;

