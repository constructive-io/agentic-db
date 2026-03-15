-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-user-identifiers-public" REVOKE ALL ON FUNCTIONS FROM administrator;


