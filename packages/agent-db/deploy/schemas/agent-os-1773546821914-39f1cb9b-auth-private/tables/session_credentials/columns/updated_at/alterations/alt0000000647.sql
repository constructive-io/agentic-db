-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/updated_at/alterations/alt0000000647
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
  ALTER COLUMN updated_at SET DEFAULT now();

