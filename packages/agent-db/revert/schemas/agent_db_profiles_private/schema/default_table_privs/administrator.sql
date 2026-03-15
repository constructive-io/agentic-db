-- Revert: schemas/agent_db_profiles_private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_profiles_private REVOKE ALL ON TABLES FROM administrator;


