-- Revert: schemas/agent_db_memberships_private/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_memberships_private REVOKE ALL ON FUNCTIONS FROM administrator;


