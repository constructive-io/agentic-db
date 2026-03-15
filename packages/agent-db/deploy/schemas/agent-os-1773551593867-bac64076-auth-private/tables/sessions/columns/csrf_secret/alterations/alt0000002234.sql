-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/csrf_secret/alterations/alt0000002234
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/csrf_secret/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.csrf_secret IS E'Secret used to generate and validate CSRF tokens for cookie-based sessions';

