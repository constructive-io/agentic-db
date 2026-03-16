-- Revert: schemas/agent_db_invites_public/grants/usage/authenticated


REVOKE USAGE ON SCHEMA "agent_db_invites_public" FROM authenticated;


