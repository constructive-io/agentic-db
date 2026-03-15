-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/alterations/alt0000000667
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/columns/allow_anonymous_sessions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".app_auth_settings 
  ALTER COLUMN allow_anonymous_sessions SET NOT NULL;

