-- Revert: schemas/agent_db_status_private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_status_private" REVOKE ALL ON FUNCTIONS FROM authenticated;


