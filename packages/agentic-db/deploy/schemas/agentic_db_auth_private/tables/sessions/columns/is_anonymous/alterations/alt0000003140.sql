-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/alterations/alt0000003140
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/is_anonymous/column


COMMENT ON COLUMN agentic_db_auth_private.sessions.is_anonymous IS E'Whether this is an anonymous session (no authenticated user)';

