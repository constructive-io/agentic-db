-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/secret_hash/alterations/alt0000002200
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/session_credentials/columns/secret_hash/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".session_credentials.secret_hash IS E'SHA-256 hash of the credential secret; the plaintext secret is never stored';

