-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/origin/alterations/alt0000002176
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/origin/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.origin IS E'The origin (protocol + host) from which the session was created, used for fingerprint validation';

