-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/user_id/alterations/alt0000000606
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/user_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".sessions.user_id IS E'References the authenticated user; NULL for anonymous sessions';

