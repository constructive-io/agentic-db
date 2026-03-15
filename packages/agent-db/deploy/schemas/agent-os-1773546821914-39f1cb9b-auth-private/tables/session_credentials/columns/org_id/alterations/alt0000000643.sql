-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/org_id/alterations/alt0000000643
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/org_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials.org_id IS E'Scopes this API key to a specific organization; NULL means app-level';

