-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/user_id/alterations/alt0000003824
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/user_id/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.user_id IS E'References the authenticated user; NULL for anonymous sessions';

