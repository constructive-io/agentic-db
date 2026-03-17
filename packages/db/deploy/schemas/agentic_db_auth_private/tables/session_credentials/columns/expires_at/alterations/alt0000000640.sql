-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/expires_at/alterations/alt0000000640
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/expires_at/column


COMMENT ON COLUMN "agentic_db_auth_private".session_credentials.expires_at IS E'When this credential expires (can differ from the parent session expiration)';

