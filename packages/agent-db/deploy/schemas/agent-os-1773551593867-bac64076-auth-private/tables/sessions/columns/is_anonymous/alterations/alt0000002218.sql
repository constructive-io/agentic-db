-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/is_anonymous/alterations/alt0000002218
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/is_anonymous/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.is_anonymous IS E'Whether this is an anonymous session (no authenticated user)';

