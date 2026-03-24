-- Deploy: schemas/agentic_db_encrypted/schema/default_seq_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_encrypted" GRANT USAGE ON SEQUENCES TO authenticated;

