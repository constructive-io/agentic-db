-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/revoked_at/alterations/alt0000000640
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/revoked_at/column


COMMENT ON COLUMN "agentic_db_auth_private".session_credentials.revoked_at IS E'When this credential was explicitly revoked; NULL means active';

