-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/last_used_at/alterations/alt0000002251
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/last_used_at/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".session_credentials.last_used_at IS 'Timestamp of the last time this credential was used for authentication';

