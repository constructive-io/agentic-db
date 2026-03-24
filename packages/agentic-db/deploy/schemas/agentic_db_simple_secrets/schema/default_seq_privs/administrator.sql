-- Deploy: schemas/agentic_db_simple_secrets/schema/default_seq_privs/administrator
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_simple_secrets GRANT USAGE ON SEQUENCES TO administrator;

