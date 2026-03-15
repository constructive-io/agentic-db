-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/uagent/alterations/alt0000000619
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/uagent/column


COMMENT ON COLUMN agent_db_auth_private.sessions.uagent IS E'User-Agent string from the client, used for strict fingerprint validation';

