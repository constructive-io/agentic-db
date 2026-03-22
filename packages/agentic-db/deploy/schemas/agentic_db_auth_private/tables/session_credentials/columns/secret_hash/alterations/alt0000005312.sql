-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/alterations/alt0000005312
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.secret_hash IS E'SHA-256 hash of the credential secret; the plaintext secret is never stored';

