-- Revert: schemas/agent_db_permissions_private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_permissions_private REVOKE USAGE ON SEQUENCES FROM administrator;


