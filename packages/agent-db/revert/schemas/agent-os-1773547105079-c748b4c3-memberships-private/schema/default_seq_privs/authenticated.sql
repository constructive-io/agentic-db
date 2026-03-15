-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-memberships-private" REVOKE USAGE ON SEQUENCES FROM authenticated;


