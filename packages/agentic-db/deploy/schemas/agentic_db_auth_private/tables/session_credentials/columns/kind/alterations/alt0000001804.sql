-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000001804
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.kind IS E'Credential type: bearer (JWT), cookie, api_key, or magic_link';

