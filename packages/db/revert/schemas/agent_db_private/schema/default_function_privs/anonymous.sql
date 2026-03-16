-- Revert: schemas/agent_db_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_private" REVOKE ALL ON FUNCTIONS FROM anonymous;


