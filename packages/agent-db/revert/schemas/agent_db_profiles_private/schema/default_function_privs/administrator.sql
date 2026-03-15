-- Revert: schemas/agent_db_profiles_private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_profiles_private REVOKE ALL ON FUNCTIONS FROM administrator;


