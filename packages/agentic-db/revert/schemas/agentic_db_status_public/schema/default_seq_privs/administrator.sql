-- Revert: schemas/agentic_db_status_public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_status_public" REVOKE USAGE ON SEQUENCES FROM administrator;


