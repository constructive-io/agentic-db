-- Revert: schemas/agent_db_permissions_public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_permissions_public REVOKE ALL ON FUNCTIONS FROM anonymous;


