-- Deploy: schemas/agentic_db_simple_secrets/schema/default_seq_privs/authenticated
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_simple_secrets" GRANT USAGE ON SEQUENCES TO authenticated;

