-- Revert: schemas/agent_db_encrypted/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_encrypted REVOKE USAGE ON SEQUENCES FROM administrator;


