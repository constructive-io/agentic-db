-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/columns/last_used_at/alterations/alt0000000642
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/columns/last_used_at/column


COMMENT ON COLUMN agent_db_auth_private.session_credentials.last_used_at IS 'Timestamp of the last time this credential was used for authentication';

