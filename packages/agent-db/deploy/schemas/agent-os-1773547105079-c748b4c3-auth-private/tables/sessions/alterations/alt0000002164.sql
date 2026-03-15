-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/alterations/alt0000002164
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table


COMMENT ON TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions IS E'Tracks user authentication sessions with expiration, fingerprinting, and step-up verification state';

