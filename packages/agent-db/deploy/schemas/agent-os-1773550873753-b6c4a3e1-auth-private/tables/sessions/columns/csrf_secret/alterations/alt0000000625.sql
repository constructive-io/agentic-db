-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/csrf_secret/alterations/alt0000000625
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/csrf_secret/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-auth-private".sessions.csrf_secret IS E'Secret used to generate and validate CSRF tokens for cookie-based sessions';

