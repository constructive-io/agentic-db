-- Revert: schemas/agent_db_simple_secrets/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_simple_secrets REVOKE ALL ON FUNCTIONS FROM anonymous;


