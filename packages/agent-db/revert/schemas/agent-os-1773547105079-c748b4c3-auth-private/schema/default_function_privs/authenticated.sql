-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema/default_function_privs/authenticated


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-auth-private" REVOKE ALL ON FUNCTIONS FROM authenticated;


