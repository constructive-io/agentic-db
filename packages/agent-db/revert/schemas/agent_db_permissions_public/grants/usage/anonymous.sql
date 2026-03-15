-- Revert: schemas/agent_db_permissions_public/grants/usage/anonymous


REVOKE USAGE ON SCHEMA "agent_db_permissions_public" FROM anonymous;


