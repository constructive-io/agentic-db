-- Deploy: schemas/agentic_db_users_public/schema/default_seq_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_users_public GRANT USAGE ON SEQUENCES TO authenticated;

