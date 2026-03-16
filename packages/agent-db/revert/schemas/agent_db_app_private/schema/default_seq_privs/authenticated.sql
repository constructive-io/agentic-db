-- Revert: schemas/agent_db_app_private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent_db_app_private" REVOKE USAGE ON SEQUENCES FROM authenticated;


