-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/last_used_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  ADD COLUMN last_used_at timestamptz;

