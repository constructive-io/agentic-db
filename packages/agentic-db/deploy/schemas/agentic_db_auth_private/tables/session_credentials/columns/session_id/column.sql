-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/session_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_auth_private.session_credentials 
  ADD COLUMN session_id uuid;

