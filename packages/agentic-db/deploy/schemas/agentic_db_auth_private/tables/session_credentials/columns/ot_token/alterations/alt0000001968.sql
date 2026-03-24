-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/ot_token/alterations/alt0000001968
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/ot_token/column


COMMENT ON COLUMN agentic_db_auth_private.session_credentials.ot_token IS E'One-time token for magic link or passwordless authentication flows';

