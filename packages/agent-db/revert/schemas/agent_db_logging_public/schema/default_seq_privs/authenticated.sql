-- Revert: schemas/agent_db_logging_public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_logging_public REVOKE USAGE ON SEQUENCES FROM authenticated;


