-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/schema/default_seq_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-status-public" REVOKE USAGE ON SEQUENCES FROM administrator;


