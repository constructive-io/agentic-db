-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/revoked_at/alterations/alt0000000641
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/revoked_at/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials.revoked_at IS E'When this credential was explicitly revoked; NULL means active';

