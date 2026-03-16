-- Revert: schemas/agent_db_memberships_public/grants/usage/authenticated


REVOKE USAGE ON SCHEMA "agent_db_memberships_public" FROM authenticated;


