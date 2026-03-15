-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/session_id/alterations/alt0000002242
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/session_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".session_credentials.session_id IS 'References the session this credential authenticates';

