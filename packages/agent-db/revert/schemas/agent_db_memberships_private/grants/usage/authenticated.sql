-- Revert: schemas/agent_db_memberships_private/grants/usage/authenticated


REVOKE USAGE ON SCHEMA "agent_db_memberships_private" FROM authenticated;


