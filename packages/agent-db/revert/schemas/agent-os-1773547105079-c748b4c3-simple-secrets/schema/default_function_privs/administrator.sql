-- Revert: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema/default_function_privs/administrator


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-simple-secrets" REVOKE ALL ON FUNCTIONS FROM administrator;


