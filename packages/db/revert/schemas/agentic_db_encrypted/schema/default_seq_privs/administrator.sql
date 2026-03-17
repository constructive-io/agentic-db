-- Revert: schemas/agentic_db_encrypted/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_encrypted" REVOKE USAGE ON SEQUENCES FROM administrator;


