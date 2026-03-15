-- Revert: schemas/agent-os-1773547105079-c748b4c3-public/schema/default_seq_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-public" REVOKE USAGE ON SEQUENCES FROM authenticated;


