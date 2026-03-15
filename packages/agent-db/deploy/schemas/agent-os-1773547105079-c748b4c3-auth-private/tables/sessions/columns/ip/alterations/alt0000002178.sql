-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/ip/alterations/alt0000002178
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/ip/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.ip IS E'IP address from which the session was created, used for strict fingerprint validation';

