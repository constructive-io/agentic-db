-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT DELETE ON agentic_db_encrypted.encrypted_secrets TO authenticated;

