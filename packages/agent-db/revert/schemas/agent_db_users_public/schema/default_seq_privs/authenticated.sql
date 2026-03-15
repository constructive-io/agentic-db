-- Revert: schemas/agent_db_users_public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_users_public REVOKE USAGE ON SEQUENCES FROM authenticated;


