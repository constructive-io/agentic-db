-- Revert: schemas/agent_db_limits_private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_limits_private REVOKE USAGE ON SEQUENCES FROM administrator;


