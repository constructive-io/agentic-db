-- Revert: schemas/agentic_db_encrypted/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_encrypted" REVOKE USAGE ON SEQUENCES FROM authenticated;


