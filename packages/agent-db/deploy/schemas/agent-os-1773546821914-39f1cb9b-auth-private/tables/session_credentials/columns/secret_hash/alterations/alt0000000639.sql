-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/secret_hash/alterations/alt0000000639
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/secret_hash/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials.secret_hash IS E'SHA-256 hash of the credential secret; the plaintext secret is never stored';

