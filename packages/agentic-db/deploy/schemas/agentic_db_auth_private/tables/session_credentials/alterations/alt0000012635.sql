-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/alterations/alt0000012635
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table


COMMENT ON TABLE agentic_db_auth_private.session_credentials IS E'Authentication credentials (bearer tokens, cookies, API keys, magic links) tied to sessions';

