-- Revert: schemas/agent_db_memberships_private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA agent_db_memberships_private REVOKE USAGE ON SEQUENCES FROM authenticated;


