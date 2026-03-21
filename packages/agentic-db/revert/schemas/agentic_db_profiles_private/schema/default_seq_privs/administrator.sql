-- Revert: schemas/agentic_db_profiles_private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_profiles_private" REVOKE USAGE ON SEQUENCES FROM administrator;


