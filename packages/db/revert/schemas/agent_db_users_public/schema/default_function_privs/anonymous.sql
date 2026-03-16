-- Revert: schemas/agent_db_users_public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_users_public" REVOKE ALL ON FUNCTIONS FROM anonymous;


