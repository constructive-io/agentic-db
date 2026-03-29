-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/last_used_at/alterations/alt0000010133
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/last_used_at/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.last_used_at IS 'Timestamp of the last time this credential was used for authentication';

