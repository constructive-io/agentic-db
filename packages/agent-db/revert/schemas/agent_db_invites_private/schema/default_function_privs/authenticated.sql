-- Revert: schemas/agent_db_invites_private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_invites_private" REVOKE ALL ON FUNCTIONS FROM authenticated;


