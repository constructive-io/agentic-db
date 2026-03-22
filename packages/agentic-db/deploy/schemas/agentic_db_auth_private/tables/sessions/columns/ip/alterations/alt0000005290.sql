-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/ip/alterations/alt0000005290
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/ip/column


COMMENT ON COLUMN agentic_db_auth_private.sessions.ip IS E'IP address from which the session was created, used for strict fingerprint validation';

