-- Revert: schemas/agent_db_permissions_public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_permissions_public REVOKE ALL ON TABLES FROM administrator;


