-- Revert: schemas/agent-os-1773547105079-c748b4c3-private/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-private" REVOKE USAGE ON SEQUENCES FROM administrator;


