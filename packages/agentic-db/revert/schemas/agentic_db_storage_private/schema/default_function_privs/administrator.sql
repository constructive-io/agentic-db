-- Revert: schemas/agentic_db_storage_private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agentic_db_storage_private REVOKE ALL ON FUNCTIONS FROM administrator;


