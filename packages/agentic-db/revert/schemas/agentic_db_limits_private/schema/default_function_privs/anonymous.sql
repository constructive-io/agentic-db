-- Revert: schemas/agentic_db_limits_private/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_limits_private" REVOKE ALL ON FUNCTIONS FROM anonymous;


