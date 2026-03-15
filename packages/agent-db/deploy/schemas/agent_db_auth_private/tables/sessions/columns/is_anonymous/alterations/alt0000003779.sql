-- Deploy: schemas/agent_db_auth_private/tables/sessions/columns/is_anonymous/alterations/alt0000003779
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/is_anonymous/column


COMMENT ON COLUMN "agent_db_auth_private".sessions.is_anonymous IS E'Whether this is an anonymous session (no authenticated user)';

