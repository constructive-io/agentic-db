-- Revert: schemas/agent_db_simple_secrets/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_simple_secrets" REVOKE ALL ON TABLES FROM administrator;


