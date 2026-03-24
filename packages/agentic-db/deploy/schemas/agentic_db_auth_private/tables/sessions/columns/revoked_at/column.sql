-- Deploy: schemas/agentic_db_auth_private/tables/sessions/columns/revoked_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_auth_private.sessions 
  ADD COLUMN revoked_at timestamptz;

