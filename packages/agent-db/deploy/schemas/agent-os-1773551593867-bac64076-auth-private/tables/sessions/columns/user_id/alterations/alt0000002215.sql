-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/user_id/alterations/alt0000002215
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/user_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-auth-private".sessions.user_id IS E'References the authenticated user; NULL for anonymous sessions';

