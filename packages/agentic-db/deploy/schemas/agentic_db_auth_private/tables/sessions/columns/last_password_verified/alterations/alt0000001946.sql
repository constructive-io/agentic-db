-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/last_password_verified/alterations/alt0000001946
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/last_password_verified/column


COMMENT ON COLUMN agentic_db_auth_private.sessions.last_password_verified IS E'Timestamp of last password re-verification for step-up authentication';

