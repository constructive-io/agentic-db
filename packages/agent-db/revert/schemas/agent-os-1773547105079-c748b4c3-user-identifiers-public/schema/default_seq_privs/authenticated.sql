-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-user-identifiers-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


