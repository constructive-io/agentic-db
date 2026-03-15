-- Revert: schemas/agent_db_profiles_public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_profiles_public" REVOKE USAGE ON SEQUENCES FROM administrator;


