-- Revert: schemas/agent_db_public/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_public REVOKE ALL ON FUNCTIONS FROM authenticated;


