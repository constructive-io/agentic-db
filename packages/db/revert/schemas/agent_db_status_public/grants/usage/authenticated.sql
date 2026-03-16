-- Revert: schemas/agent_db_status_public/grants/usage/authenticated


REVOKE USAGE ON SCHEMA "agent_db_status_public" FROM authenticated;


