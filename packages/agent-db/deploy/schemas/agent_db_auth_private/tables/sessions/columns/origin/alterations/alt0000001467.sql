-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/origin/alterations/alt0000001467
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/origin/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.origin IS E'The origin (protocol + host) from which the session was created, used for fingerprint validation';

