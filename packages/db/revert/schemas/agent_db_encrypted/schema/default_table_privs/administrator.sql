-- Revert: schemas/agent_db_encrypted/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_encrypted" REVOKE ALL ON TABLES FROM administrator;


