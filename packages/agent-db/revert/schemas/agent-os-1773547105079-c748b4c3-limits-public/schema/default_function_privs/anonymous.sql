-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema/default_function_privs/anonymous


ALTER DEFAULT PRIVILEGES IN SCHEMA "agent-os-1773547105079-c748b4c3-limits-public" REVOKE ALL ON FUNCTIONS FROM anonymous;


