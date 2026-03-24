-- Revert: schemas/agentic_db_users_public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_users_public" REVOKE USAGE ON SEQUENCES FROM administrator;


