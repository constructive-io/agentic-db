-- Revert: schemas/agentic_db_app_public/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_app_public" REVOKE ALL ON TABLES FROM administrator;


