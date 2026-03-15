-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/last_used_at/alterations/alt0000000642
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/last_used_at/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials.last_used_at IS 'Timestamp of the last time this credential was used for authentication';

