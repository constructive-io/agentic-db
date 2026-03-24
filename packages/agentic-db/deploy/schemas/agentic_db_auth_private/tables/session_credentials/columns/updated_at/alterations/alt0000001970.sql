-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/updated_at/alterations/alt0000001970
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/updated_at/column


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN updated_at SET DEFAULT now();

