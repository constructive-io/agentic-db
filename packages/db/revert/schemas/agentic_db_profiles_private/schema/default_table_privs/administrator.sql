-- Revert: schemas/agentic_db_profiles_private/schema/default_table_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_profiles_private" REVOKE ALL ON TABLES FROM administrator;


