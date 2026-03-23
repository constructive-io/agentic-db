-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/name/alterations/alt0000002356
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/name/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.name IS E'User-provided display name for this credential (e.g. My CI Key)';

