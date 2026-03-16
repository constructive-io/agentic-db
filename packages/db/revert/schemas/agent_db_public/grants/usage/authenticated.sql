-- Revert: schemas/agent_db_public/grants/usage/authenticated


REVOKE USAGE ON SCHEMA "agent_db_public" FROM authenticated;


