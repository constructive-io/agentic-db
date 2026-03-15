-- Revert: schemas/agent_db_simple_secrets/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_simple_secrets REVOKE USAGE ON SEQUENCES FROM authenticated;


