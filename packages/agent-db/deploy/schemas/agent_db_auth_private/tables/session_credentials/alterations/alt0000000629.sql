-- Deploy: schemas/agent_db_auth_private/tables/session_credentials/alterations/alt0000000629
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/session_credentials/table


COMMENT ON TABLE agent_db_auth_private.session_credentials IS E'Authentication credentials (bearer tokens, cookies, API keys, magic links) tied to sessions';

