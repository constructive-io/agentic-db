-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/value/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ADD COLUMN value bytea;

