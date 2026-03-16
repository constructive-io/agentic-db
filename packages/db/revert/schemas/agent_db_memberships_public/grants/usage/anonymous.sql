-- Revert: schemas/agent_db_memberships_public/grants/usage/anonymous


REVOKE USAGE ON SCHEMA "agent_db_memberships_public" FROM anonymous;


