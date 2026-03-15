-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/org_id/alterations/alt0000002252
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/org_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".session_credentials.org_id IS E'Scopes this API key to a specific organization; NULL means app-level';

