-- Revert: schemas/agentic_db_simple_secrets/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_simple_secrets REVOKE ALL ON TABLES FROM administrator;


