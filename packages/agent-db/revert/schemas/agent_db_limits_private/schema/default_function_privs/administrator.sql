-- Revert: schemas/agent_db_limits_private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_limits_private REVOKE ALL ON FUNCTIONS FROM administrator;


