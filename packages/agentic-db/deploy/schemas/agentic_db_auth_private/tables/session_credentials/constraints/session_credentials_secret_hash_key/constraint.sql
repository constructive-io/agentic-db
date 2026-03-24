-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/constraints/session_credentials_secret_hash_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_auth_private.session_credentials 
  ADD CONSTRAINT session_credentials_secret_hash_key 
    UNIQUE (secret_hash);

