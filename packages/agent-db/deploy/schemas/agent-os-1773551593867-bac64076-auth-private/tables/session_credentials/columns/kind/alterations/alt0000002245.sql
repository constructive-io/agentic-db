-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/alterations/alt0000002245
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".session_credentials.kind IS E'Credential type: bearer (JWT), cookie, api_key, or magic_link';

