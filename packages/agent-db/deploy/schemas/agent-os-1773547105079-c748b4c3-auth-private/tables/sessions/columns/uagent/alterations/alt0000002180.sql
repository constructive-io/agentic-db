-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/uagent/alterations/alt0000002180
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/uagent/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.uagent IS E'User-Agent string from the client, used for strict fingerprint validation';

