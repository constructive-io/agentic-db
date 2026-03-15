-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/ip/alterations/alt0000003787
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/ip/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.ip IS E'IP address from which the session was created, used for strict fingerprint validation';

