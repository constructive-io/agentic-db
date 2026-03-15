-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/expires_at/alterations/alt0000000640
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/expires_at/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials.expires_at IS E'When this credential expires (can differ from the parent session expiration)';

