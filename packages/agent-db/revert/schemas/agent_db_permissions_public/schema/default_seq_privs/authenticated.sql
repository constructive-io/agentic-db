-- Revert: schemas/agent_db_permissions_public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_permissions_public REVOKE USAGE ON SEQUENCES FROM authenticated;


