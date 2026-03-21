-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/user_id/alterations/alt0000003437
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/user_id/column


COMMENT ON COLUMN agentic_db_auth_private.sessions.user_id IS E'References the authenticated user; NULL for anonymous sessions';

