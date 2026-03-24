-- Deploy: schemas/agentic_db_encrypted/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_encrypted GRANT USAGE ON SEQUENCES TO administrator;

