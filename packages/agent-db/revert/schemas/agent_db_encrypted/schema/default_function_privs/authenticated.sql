-- Revert: schemas/agent_db_encrypted/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_encrypted" REVOKE ALL ON FUNCTIONS FROM authenticated;


