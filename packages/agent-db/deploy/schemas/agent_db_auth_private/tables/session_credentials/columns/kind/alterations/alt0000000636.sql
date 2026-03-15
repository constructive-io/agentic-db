-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000000636
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/kind/column


COMMENT ON COLUMN agent_db_auth_private.session_credentials.kind IS E'Credential type: bearer (JWT), cookie, api_key, or magic_link';

