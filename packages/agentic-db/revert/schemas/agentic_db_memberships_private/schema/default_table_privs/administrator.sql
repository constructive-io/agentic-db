-- Revert: schemas/agentic_db_memberships_private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_memberships_private REVOKE ALL ON TABLES FROM administrator;


