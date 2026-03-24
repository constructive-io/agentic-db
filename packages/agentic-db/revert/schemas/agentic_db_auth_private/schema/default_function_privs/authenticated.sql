-- Revert: schemas/agentic_db_auth_private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agentic_db_auth_private" REVOKE ALL ON FUNCTIONS FROM authenticated;


