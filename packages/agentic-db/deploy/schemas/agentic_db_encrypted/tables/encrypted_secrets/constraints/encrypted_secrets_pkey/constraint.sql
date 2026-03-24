-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/constraints/encrypted_secrets_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ADD CONSTRAINT encrypted_secrets_pkey PRIMARY KEY (id);

