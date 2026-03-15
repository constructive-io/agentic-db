-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/csrf_secret/alterations/alt0000002186
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/csrf_secret/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-auth-private".sessions.csrf_secret IS E'Secret used to generate and validate CSRF tokens for cookie-based sessions';

