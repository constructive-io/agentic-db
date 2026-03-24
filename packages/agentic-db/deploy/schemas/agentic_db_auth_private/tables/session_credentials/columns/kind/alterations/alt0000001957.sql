-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000001957
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/kind/column


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN kind SET NOT NULL;

