-- Revert: schemas/agent_db_private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_private" REVOKE USAGE ON SEQUENCES FROM administrator;


