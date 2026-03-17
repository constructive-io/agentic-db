-- Revert: schemas/agentic_db_simple_secrets/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_simple_secrets" REVOKE USAGE ON SEQUENCES FROM administrator;


